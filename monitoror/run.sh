#!/usr/bin/with-contenv bashio

CONFIG_PATH=/data/options.json
MO_MONITORABLE_GITHUB_TOKEN="$(jq --raw-output '.github_token' $CONFIG_PATH)" ./monitoror