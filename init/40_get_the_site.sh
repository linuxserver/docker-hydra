#!/bin/bash

[[ ! -d /config/hydra/.git ]] && (git clone https://github.com/theotherp/nzbhydra /config/hydra && chown -R abc:abc /config)

# test if updates have been disabled
[ "$ADVANCED_DISABLEUPDATES" ] && exit 0

cd /config/hydra
git pull
chown -R abc:abc /config
