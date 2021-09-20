#!/bin/sh
current_dir=${PWD}

cd $current_dir/kong-cp
sh kong_down.sh

cd $current_dir/kong-dp
sh kong_down.sh

cd $current_dir/node_exporter
sh node_exporter_down.sh

cd $current_dir/prometheus
sh prometheus_down.sh

cd $current_dir/grafana
sh grafana_down.sh

cd $current_dir/portainer
sh portainer_down.sh

docker network rm nginx_proxy || true
docker network rm grafana_monitor || true
docker network rm prometheus_network || true
docker network rm kong_network || true
docker network rm kong_proxy || true
