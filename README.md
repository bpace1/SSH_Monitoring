# SSH Monitoring bot via Telegram.

## How to use
1. Go to Telegram and search for @BotFather.
2. Start the chat and type /newbot.
3. Enter a name for your bot.
4. Copy the token.
5. Initialize your bot by typing /start and send a message.
6. go to https://api.telegram.org/bot{our_bot_token}/getUpdates and copy the chat_id.
7. Run the following commands:
```
  > git clone https://github.com/bpace1/SSH_Monitoring.git
  > cd SSH_Monitoring
  > nano ssh_monitoring.sh

```
8. Replace the BOT_TOKEN and CHAT_ID with your own values.
9. 
```
  > cp ssh_monitoring.sh /usr/local/bin/ssh_monitoring.sh
  > chmod +x /usr/local/bin/ssh_monitoring.sh
  > sudo nano /etc/pam.d/sshd
```
10. Add the following line to the end of the file:
```
  > session optional pam_exec.so /usr/local/bin/ssh_notify.sh
```
11.
``` 
sudo systemctl restart ssh
```
12. Test it.

