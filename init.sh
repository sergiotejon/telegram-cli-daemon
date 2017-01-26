#!/bin/sh

if [ -z "$DAEMON_PORT" ]; then
    env DAEMON_PORT=2391
fi  

if [ -z "$OUTPUT_MODE" ]; then
    env OUTPUT_MODE=--json
fi  

/usr/share/telegram-daemon/bin/telegram-cli -vvvvR -k /etc/telegram-cli/server.pub -W -d -P $DAEMON_PORT --accept-any-tcp -c /etc/telegram-cli/telegram.conf $OUTPUT_MODE
