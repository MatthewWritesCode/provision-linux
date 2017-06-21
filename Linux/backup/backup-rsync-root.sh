
# Where to backup to.
dest="$1"

bakup_files='--exclude={"/home/.ecryptfs","/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} /'

rsync -aAXv $backup_files $dest