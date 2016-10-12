/usr/sbin/nginx -t
/etc/init.d/nginx start 
/etc/init.d/nginx status

tail -f /var/log/nginx/error.log &
tail -f /var/log/nginx/access.log &