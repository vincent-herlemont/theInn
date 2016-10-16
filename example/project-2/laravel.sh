#!/bin/bash
docker-compose exec laravel-php-fpm chown user:user /install-laravel.sh
docker-compose exec laravel-php-fpm chown -R user:www-data /var/www/
docker-compose exec laravel-php-fpm chmod +x /install-laravel.sh
docker-compose exec --user user laravel-php-fpm ./install-laravel.sh