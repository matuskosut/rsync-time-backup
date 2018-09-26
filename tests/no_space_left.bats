#!/usr/bin/env bats

@test "rsync_tmbackup no space left on device" {
  run mkdir -p -- '/tmp/work'
  run dd if=/dev/urandom of=/tmp/work/file1.txt count=500
  run ./rsync_tmbackup.sh /tmp/work /mnt/s1
  [ "$status" -ne 0 ]
  [[ "${lines[-6]}" =~ "rsync_tmbackup: rsync -D --compress --numeric-ids --links --hard-links --one-file-system --itemize-changes --times --recursive --perms --owner --group --stats --human-readable --log-file" ]]
  [[ "${lines[-2]}" =~ "rsync_tmbackup: [WARNING] No space left on device - removing oldest backup and resuming." ]]
  [[ "${lines[-1]}" =~ "rsync_tmbackup: [ERROR] No space left on device, and no old backup to delete." ]]
}
