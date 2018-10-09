#!/bin/bash
####################################
#
# Backup to NFS mount script.
#
####################################

# What to backup.
backup_files="/home /etc /opt --exclude=/home/.ecryptfs --exclude=/home/*/.cache --ignore-failed-read"

# Where to backup to.
dest="$1"

# Create archive filename.
day=$(date +%Y.%m.%d_%H.%M.%S)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
tar -czf $dest/$archive_file $backup_files

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest
