#!/bin/bash
/etc/init.d/php5-fpm start
/etc/init.d/php5-fpm status

tail -f -n 0 /var/log/php5-fpm.log