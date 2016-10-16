#!/bin/bash
# This script is excute in user mode not root !

echo "Laravel installer"
composer global require "laravel/installer"

#rm -r /var/www/laravel
cd /var/www/
/home/user/.composer/vendor/bin/laravel new laravel

# Group www-data need create file in this tow folder.
#chmod 770 /var/www/laravel/storage/logs/
#chmod 770 /var/www/laravel/storage/framework/views/