#!/usr/bin/env bats

@test "bash linter" {
  run shellcheck rsync_tmbackup.sh
  [ "$status" -eq 0 ]
  [ "$output" = "foo: no such file 'nonexistent_filename'" ]
}
