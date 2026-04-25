#!/bin/sh
set -eu
: "${CONFIG_JSON:?CONFIG_JSON is required}"
: "${CREDENTIALS_JSON:=[]}"
mkdir -p /app/config
printf '%s' "$CONFIG_JSON" > /app/config/config.json
printf '%s' "$CREDENTIALS_JSON" > /app/config/credentials.json
exec /app/kiro-rs -c /app/config/config.json --credentials /app/config/credentials.json
