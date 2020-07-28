
# Where to backup to.
dest="$1"

rsync -av --exclude-from='rsync-excludes.txt' / $dest
