# Test rsync-time-backup
# - lint
# - bats
lint:
	shellcheck --exclude=SC2009 -f tty rsync_tmbackup.sh
bats:
	bats 

