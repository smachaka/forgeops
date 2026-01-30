#!/usr/bin/env bash

TARGET=$1

if [[ -z "$TARGET" ]]; then
  echo "No directory provided"
  exit 1
fi

if [[ ! -d "$TARGET" ]]; then
  echo "Directory does not exist"
  exit 1
fi

ARCHIVE="$(basename "$TARGET")-backup.tar.gz"
tar -czf "$ARCHIVE" "$TARGET"

echo "Backup created: $ARCHIVE"

