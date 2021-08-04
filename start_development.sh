#!/bin/bash
# This scripts starts the rails app server
# It is owned by root
datetime=`date`
echo "Starting development server @  $datetime"

# stop any shell
echo "Stopping any instance of this server started previously(production and development if any)" 
./stop_any_pid.sh


# in development we wipe data, reset database and reseed
echo "resetting and reseeding the database"
rake db:reset db:migrate

# precompile for development
echo "precompiling everything for development environment"
RAILS_ENV=development rails assets:precompile

# stop any shell
echo "Stopping any instance of this server started previously(production and development if any)" 
./stop_any_pid.sh

# bind puma to read ssl 
# certificate="/etc/pki/tls/certs/server.driptco.com.crt"
# server_private_key="/etc/pki/tls/private/localhost.key"
# puma -b "ssl://0.0.0.0:443?key=$server_private_key&cert=$certificate" &
# puma -b tcp://0.0.0.0:80 &

# start the server
# echo "starting the server in development mode on both port 80 and port 443"
rails server -b 0.0.0.0 -p 80 -e development -P tmp/pids/develop_env_port_80.pid &
rails server -b 0.0.0.0 -p 443 -e development -P tmp/pids/develop_env_port_443.pid & 
