#!/bin/bash
/etc/init.d/php5-fpm start
/etc/init.d/php5-fpm status

tail -f /var/log/php5-fpm.log