#!/bin/bash

[[ ! -d /app/hydra/.git ]] && git clone https://github.com/theotherp/nzbhydra /app/hydra
cd /app/hydra
git pull
chown -R abc:abc /config /app
