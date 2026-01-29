#!/usr/bin/env bash
set -e

COMMAND=$1

case "$COMMAND" in
  version)
    cat VERSION
    ;;
  check)
    bash features/check/check.sh
    ;;
  *)
    echo "ForgeOps CLI"
    echo "Usage: forgeops [check|backup|deploy|cleanup|version]"
    ;;
esac
