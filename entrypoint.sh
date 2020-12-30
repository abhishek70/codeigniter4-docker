#!/bin/bash

set -e

SOURCE_DIR=/var/www/html

if [[ "${CI_ENVIRONMENT}" != "production" ]]; then

  #https://getcomposer.org/doc/03-cli.md#composer-allow-superuser
  #If set to 1, this env disables the warning about running commands as root/super user.
  #It also disables automatic clearing of sudo sessions, so you should really only set
  #this if you use Composer as super user at all times like in docker containers.
  export COMPOSER_ALLOW_SUPERUSER=1
  (cd ${SOURCE_DIR} && composer install --prefer-dist)

fi

# Wait Script for MySQL
/usr/local/bin/wait-for-it.sh -h "${MYSQL_HOST}" -p 3306 -t 300

# Creating migration table
php spark migrate -all

exec "$@"