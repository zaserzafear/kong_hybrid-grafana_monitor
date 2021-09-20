#!/bin/sh

docker network create nginx_proxy || true
docker network create grafana_monitor || true
docker network create prometheus_network || true
docker network create kong_network || true
docker network create kong_proxy || true

current_dir=${PWD}

cd $current_dir/portainer
sh portainer_up.sh

cd $current_dir/prometheus
sh prometheus_up.sh

cd $current_dir/node_exporter
sh node_exporter_up.sh

cd $current_dir/kong-cp
sh kong_up.sh

cd $current_dir/kong-dp
sh kong_up.sh

cd $current_dir/grafana
sh grafana_up.sh
