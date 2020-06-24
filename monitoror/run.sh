#!/usr/bin/with-contenv bashio

for var in $(bashio::config 'configs|keys'); do
  name="MO_CONFIG_$(bashio::config "configs[${var}].name")"
  path=$(bashio::config "configs[${var}].path")
  bashio::log.info "Setting ${name} to ${path}"
  export "${name}=${path}"
done

CONFIG_PATH=/data/options.json
MO_MONITORABLE_GITHUB_TOKEN="$(jq --raw-output '.github_token' $CONFIG_PATH)" \
MO_MONITORABLE_AZUREDEVOPS_URL="$(jq --raw-output '.ado_url' $CONFIG_PATH)" \
MO_MONITORABLE_AZUREDEVOPS_TOKEN="$(jq --raw-output '.ado_token' $CONFIG_PATH)" \
  ./monitoror

