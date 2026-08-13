#!/bin/bash
# Start Field Guide
# Double-click this file to open the EM x AI Field Guide with fully working
# inline video players. (YouTube refuses to play embedded videos on pages
# opened directly from disk, so the site needs to be served over HTTP.)
cd "$(dirname "$0")"
PORT=8123
if ! curl -s -o /dev/null --max-time 1 "http://localhost:$PORT/em-ai-fieldguide.html"; then
  nohup python3 -m http.server "$PORT" >/dev/null 2>&1 &
  sleep 1
fi
open "http://localhost:$PORT/em-ai-fieldguide.html"
