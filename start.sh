#!/bin/sh

sed -i -e "s/\$UUID/$UUID/g" /xray.json &&
tor &
/xray -config /xray.json &
caddy run --config /etc/caddy/Caddyfile
