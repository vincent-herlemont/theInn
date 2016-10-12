
cd /etc/ssl/private
if [ ! -f ./haproxy.pem ]; then
	openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=FR/ST=Bonjour/L=Aurevoir/O=plo/CN=server" -keyout key.pem -out cert.pem
	cat ./cert.pem ./key.pem | tee haproxy.pem
	chmod 400 ./*.pem
fi
cd /

/etc/init.d/haproxy start
/etc/init.d/haproxy status

tail -F /var/log/haproxy.log &
