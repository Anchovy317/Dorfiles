#!/usr/bin/env bash
count=$(checkupdates 2>/dev/null | wc -l || echo 0)
echo "$count"
echo "$count"

[ "$count" -gt 0 ] && echo "#ffff00" || echo "#ffffff"
