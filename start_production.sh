#!/bin/bash
# This scripts starts the rails app  production server
# It is owned by root

# stopping any instances previously started
# including httpd, nginx etc.
./stop_any_pid.sh

# precompile for development
./compile_for_production.sh

# start the server
echo "starting the server in production" 
rails server -b 0.0.0.0 -p 80 -e p -P tmp/pids/production_env_port_80.pid &
rails server -b 0.0.0.0 -p 443 -e p -P tmp/pids/production_env_port_443.pid &
echo "\n"
