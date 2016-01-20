#!/bin/bash
##
# Installs the Logstash and Sensu/Graphite stacks
##
set -eux

source env.sh

$BASE_PATH/clean.sh
$BASE_PATH/generate-lumberjack-ssl.sh

$BASE_PATH/install-elasticsearch.sh
$BASE_PATH/install-elasticsearch-curator.sh
$BASE_PATH/install-elasticsearch-hq.sh

$BASE_PATH/install-rabbitmq.sh
$BASE_PATH/install-redis.sh

$BASE_PATH/install-memcached.sh
$BASE_PATH/install-graphite-carbon.sh
$BASE_PATH/install-graphite-web.sh
$BASE_PATH/install-grafana.sh
$BASE_PATH/install-tessera.sh

$BASE_PATH/configure-rabbitmq-sensu.sh
$BASE_PATH/install-sensu.sh
$BASE_PATH/install-sensu-server.sh
$BASE_PATH/install-sensu-api.sh
$BASE_PATH/install-uchiwa.sh
$BASE_PATH/install-sensu-metrics-relay.sh
$BASE_PATH/configure-sensu-metrics-server.sh

$BASE_PATH/install-flapjack.sh
$BASE_PATH/install-sensu-flapjack.sh

$BASE_PATH/install-logstash.sh
$BASE_PATH/configure-logstash-indexer.sh
$BASE_PATH/install-kibana.sh

$BASE_PATH/install-statsd.sh

$BASE_PATH/install-mysql.sh
$BASE_PATH/install-cachet.sh
