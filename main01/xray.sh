#!/bin/sh
if [ ! -f UUID ]; then
  UUID="f41a2e56-725b-492e-abeb-05a914780497"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

