#!/usr/bin/env bash
set -e

COMMAND=$1

case "$COMMAND" in
  version)
    cat VERSION && echo
    ;;
  check)
    bash features/check/check.sh
    ;;
 backup)
    bash features/backup/backup.sh "$2"
    ;;
  *)
    echo "ForgeOps CLI - devops automation"
    echo "Usage: forgeops [check|backup|deploy|cleanup|version]"
    ;;
esac
