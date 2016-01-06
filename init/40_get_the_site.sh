#!/bin/bash

[[ ! -d /config/hydra/.git ]] && git clone https://github.com/theotherp/nzbhydra /config/hydra
git pull
chown -R abc:abc /config
