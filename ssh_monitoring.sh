#!/bin/bash 

BOT_TOKEN="YOUR_BOT_TOKEN"  
CHAT_ID="YOUR_CHAT_ID"      

IP=$(echo $SSH_CONNECTION | awk '{print $1}')

USER=$(logname 2>/dev/null || id -un)

HOSTNAME=$(hostname)
DATE=$(date "+%Y-%m-%d %H:%M:%S")

MESSAGE="🚀 SSH Login Alert 🚀
User: $USER
IP: $IP
Host: $HOSTNAME
Date: $DATE"

curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" \
     -d chat_id="$CHAT_ID" \
     -d text="$MESSAGE"
