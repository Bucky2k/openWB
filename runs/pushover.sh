#!/bin/bash

. /var/www/html/openWB/openwb.conf

curl -s \
	--form-string "token=$pushovertoken" \
	--form-string "user=$pushoveruser" \
	--form-string "message=$1" \
	https://api.pushover.net/1/messages.json >> /dev/null
