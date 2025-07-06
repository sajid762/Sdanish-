#!/bin/bash



echo "🔓 OmnipotentTermux: Starting All-in-One Toolkit..."



# Update packages

echo "📦 Updating packages..."

pkg update -y && pkg upgrade -y



# Install essentials

echo "📥 Installing required tools..."

pkg install -y nmap net-tools termux-api python git curl



# Total Control (Basic Device Info)

echo "📱 Device Info (Total Control)"

termux-info



# Network Hack (Scan LAN devices)

echo "🌐 Scanning LAN devices..."

ip=$(ip addr show wlan0 | grep inet | awk '{print $2}' | cut -d/ -f1)

subnet=$(echo $ip | cut -d. -f1-3).0/24

nmap -sn $subnet



# Device Scan

echo "📡 Running detailed port scan on local IP..."

nmap -A $ip



# Email Grab (Fake placeholder)

echo "📧 Grabbing email from sample target (simulation)..."

echo "No email targets defined. Add target logic here."



# Location Track

echo "📍 Fetching device location..."

termux-location



# ISP Hack (Display ISP Info)

echo "🌐 Checking public IP and ISP..."

curl -s ipinfo.io



# Port Scan

read -p "Enter target IP for port scan: " target

nmap -p- $target



echo "✅ OmnipotentTermux finished running all tasks."