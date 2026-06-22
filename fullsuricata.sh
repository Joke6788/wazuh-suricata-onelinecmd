sudo bash -c '
apt-get update && apt-get install -y suricata && \

suricata-update && \

CONFIG_FILE="/var/ossec/etc/ossec.conf"
if [ -f "$CONFIG_FILE" ]; then
    sed -i "/<\/localfile>/i \ \ <localfile>\n    <log_format>json<\/log_format>\n    <location>\/var\/log\/suricata\/eve.json<\/location>\n  <\/localfile>" "$CONFIG_FILE"
    echo "Wazuh agent configuration updated."
else
    echo "Warning: Wazuh agent config not found at $CONFIG_FILE. Please add the localfile manually."
fi && \

systemctl restart wazuh-agent && \

suricata -c /etc/suricata/suricata.yaml -i eth0 -D
'
