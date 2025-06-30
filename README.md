# LAN_Recon_Scanner
Custom Bash script to scan local networks using Nmap. Built and debugged manually for learning and tool development.

# 🔍 LAN Recon Scanner (Bash Script)

**Author:** Jim Combs  
**Version:** v1.0  
**Created:** June 2025  
**Tech Stack:** Bash, Nmap, Linux Terminal

---

## 🛠️ Overview
This is a lightweight, beginner-friendly **Bash script** that automates local network reconnaissance using `nmap`. It identifies live devices on a given subnet and scans for open ports — all through a clean, guided interface.

Designed for fast recon on home, lab, or test networks.

---

## ⚙️ Features
- 📡 Accepts any subnet (`192.168.1.0/24`, `10.0.0.0/24`, etc.)
- 🖥️ Detects live hosts using `nmap -sn`
- 🔍 Scans top 100 TCP ports (`nmap -T4 -F`)
- 🧾 Clean output per host for quick analysis
- 🛠️ Easily modifiable for deeper scans, logging, or automation

---

## 🧠 Why I Built This
I created this tool to:
- Strengthen my understanding of **network discovery & port scanning**
- Practice Bash scripting for cybersecurity
- Begin building a **toolbelt of custom scripts** for real-world ops

---

## 💡 Workflow Philosophy
> I use AI tools like ChatGPT to enhance my workflow and accelerate learning — not as a crutch, but as a **smart companion**. Every script I write is tested, debugged, and fully understood by me.

---

## 🚀 Future Improvements
- Auto-detect local subnet
- Add optional save-to-file logging
- Add deep scan (`nmap -A`) mode
- Port to Python for cleaner output parsing

---

## 📁 Sample Usage

1. **Make the script executable:**
```bash
chmod +x nmap_scan.sh