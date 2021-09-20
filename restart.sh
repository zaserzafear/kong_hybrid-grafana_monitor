#!/bin/sh
current_dir=${PWD}

cd $current_dir/portainer
sh portainer_restart.sh

cd $current_dir/prometheus
sh prometheus_restart.sh

cd $current_dir/node_exporter
sh node_exporter_restart.sh

cd $current_dir/kong-cp
sh kong_restart.sh

cd $current_dir/kong-dp
sh kong_restart.sh

cd $current_dir/grafana
sh grafana_restart.sh
