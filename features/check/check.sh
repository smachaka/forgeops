#!/usr/bin/env bash

echo "🔍 ForgeOps system check"
#uptime
echo "1. checking uptime"

if command -v uptime >/dev/null 2>&1; then
  uptime
else
  echo "uptime: not available on this system"
fi

#df -h
echo "2. checking disk space"

if command -v df -h >/dev/null 2>&1; then
df -h   
else
  echo "diskspace: not available on this system"
fi

#free -m
echo "3. checking RAM Usage"

if command -v free -m >/dev/null 2>&1; then
free -m
else
  echo "RAM Usage: not available on this system"
fi

