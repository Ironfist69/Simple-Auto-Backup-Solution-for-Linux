# Simple-Auto-Backup-Solution-for-Linux

## Objective
This project is a simple, automated backup solution using a Bash script on Linux. It utilizes rsync for efficient and reliable file synchronization from a source directory to a local (or remote) destination. Logs are generated for each backup attempt.

![Screenshot 2025-05-29 211500](https://github.com/user-attachments/assets/3786f595-4f2e-4a33-9f5a-b32148bfc426)

## Features

- Automated local backup using rsync
- Timestamped logging of each backup session
- Easily configurable for remote backup
- Lightweight and suitable for cron job scheduling

## File Structure

```
backupScript.sh    # Main Bash script
src/               # Source directory containing files to back up
dest/              # Destination directory for the backup
/var/log/localbak.log  # Log file recording backup status
```
## Install rsync
- Fedora/RHEL ``` sudo dnf install rsync```
- Debian ``` sudo apt install rsync```
- Arch ``` sudo pacman -S rsync```
## Automation with Cron
To run this backup script automatically at a scheduled time:

```
crontab -e
```
Add a cron job (e.g., to run daily at 03:30PM):

```
30 15 * * * sudo /home/[user]/backupScript.sh
```
## Make sure cron service is running
```sudo systemctl status crond.service```
if not then
```sudo systemctl enable --now crond.service```

## Simply fork this repo for the Bash script ;)
