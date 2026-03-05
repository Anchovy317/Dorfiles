#!/usr/bin/env bash
if pgrep -f '^ssh( |$)' >/dev/null; then
    echo "SSH ON"
    echo "ON"
    echo "#ffffff"
else
    echo "SSH"
    echo ""
    echo "#ffffff"
fi
