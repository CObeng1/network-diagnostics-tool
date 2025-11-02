# network-diagnostics-tool
A simple Bash-based network troubleshooting script built for quick diagnostics.

📖 Overview

This project is a lightweight network diagnostics tool I created to test connectivity and network health from the command line.
It automatically checks your system’s IP configuration, internet reachability, DNS response, and latency — all in one run.

I built it to sharpen my Bash scripting skills and learn how network troubleshooting works behind the scenes — something that’s critical for roles in technical support and systems engineering.

⚙️ Features

Checks current IP address and network interfaces

Tests connectivity to Google’s public DNS (8.8.8.8)

Performs a quick DNS lookup for google.com

Measures latency with ping

Displays current user, date, and system uptime

🧠 Tech Stack

Language: Bash (Linux Shell)

Tested On: Ubuntu 22.04 (WSL2)

Tools Used: ping, dig, curl, ifconfig, and standard Linux utilities


🚀 How to Run

1. Clone the repository:

git clone https://github.com/CObeng1/network-diagnostics-tool.git


2. Enter the directory:

cd network-diagnostics-tool


3. Make the script executable:

chmod +x network_diagnostics.sh


4. Run the tool:

./network_diagnostics.sh

🧩 Example Output
---------------------------------------
🕓 Network Diagnostics Report
---------------------------------------
Date: Sat Nov 1 23:45:10 EDT 2025
User: caitcomputer
---------------------------------------

✅ Internet Connection: Active
🌐 Public IP: 100.25.48.12
📶 Ping to 8.8.8.8: Success (23 ms)
🔍 DNS Lookup: google.com -> 142.250.190.78
---------------------------------------

💬 Why I Built This

I wanted to better understand how simple shell tools can automate tasks that technical support engineers perform daily — like diagnosing connection drops, verifying DNS resolution, and confirming IP assignments.
This project taught me how to use Bash logic, automate repetitive commands, and present outputs clearly for end users! 
