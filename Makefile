# Test rsync-time-backup
# - lint
# - bats

all: lint test

lint: rsync_tmbackup.sh
	shellcheck --exclude=SC2009 -f tty rsync_tmbackup.sh

test: tests/
	bats tests/
