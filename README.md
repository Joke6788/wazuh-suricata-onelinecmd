# 🔐 Wazuh + Suricata One-Line Installer

> **Suricata IDS/IPS + Wazuh Agent Integration** - Install with a single command.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Shell Script](https://img.shields.io/badge/Shell-Bash-green.svg)](https://www.gnu.org/software/bash/)

---

## 📖 What is this?

This repository provides a **One-Line Installer Script** that integrates **Suricata** (Advanced Network IDS/IPS) with **Wazuh Agent** (SIEM & XDR Platform).

- ✅ Full Suricata installation
- ✅ Automatic Suricata Rules update (Emerging Threats Open)
- ✅ Automatic Wazuh Agent configuration (`ossec.conf` to read `eve.json`)
- ✅ Start Suricata in IDS Mode (Background Daemon)

---

## 🚀 One-Line Installation

Open your terminal and run the following command:

```bash
bash <(curl -s https://raw.githubusercontent.com/Joke6788/wazuh-suricata-onelinecmd/main/fullsuricata.sh)
