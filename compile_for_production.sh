#!/bin/bash
# This scripts starts the rails app  production server
chmod -R 777 app/javascript/packs
sleep 1
echo "precompiling everything for production environment"
rake assets:precompile RAILS_ENV=production
sleep 1
rake db:migrate RAILS_ENV=production
sleep 1
echo "changing file permission for tmp and public folder"
chmod -R 755 *  ; sleep 1
chmod -R 777 tmp  
chmod -R 777 public
echo "chaninging ownership and assigning to user ctdrates for root folder"
chown -R ctdrates:ctdrates  .
echo "\n"
