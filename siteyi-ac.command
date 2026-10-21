#!/bin/zsh

cd -- "$(dirname "$0")"
python3 -m http.server 8765 > /tmp/tesla-roadster-site.log 2>&1 &
server_pid=$!
sleep 1
open "http://localhost:8765/index.html#2026"
wait "$server_pid"
