#!/bin/bash
for f in ${INIT_DIR:-init}/*.sh; do
  bash "$f"
done

while true; do
echo "HTTP/1.1 200 OK\r\n" | nc -l 9000
sleep 1
done
