/usr/sbin/nginx -t
/etc/init.d/nginx start 
/etc/init.d/nginx status

tail -f -n 0 /var/log/nginx/error.log &
tail -f -n 0 /var/log/nginx/access.log &