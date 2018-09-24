#!/usr/bin/env bats

@test "rsync_tmbackup help" {
  run ./rsync_tmbackup.sh --help
  [ "$status" -eq 0 ]
  [[ "${lines[0]}" =~ "Usage: rsync_tmbackup" ]]
}
