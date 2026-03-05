#!/usr/bin/env bash


root_line=$(df -h / | awk 'NR==2 {printf "Total: %s - Used: %s", $2, $3}')

home_line=$(df -h /home | awk 'NR==2 {printf "Total: %s - Used: %s ", $2, $3} ')

echo "1. ${root_line} // 2. ${home_line}"


