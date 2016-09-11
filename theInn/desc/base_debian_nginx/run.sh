#!bin/bash
echo "Run.sh"
service nginx start
service nginx status

# run the log
tail -F /var/log/nginx/access.log & 
tail -F /var/log/nginx/error.log &

# keep a live
tail -f /dev/null
