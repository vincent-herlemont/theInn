# Debian dev

### Build
```bash
docker build -t debiandev .
```

### Start

- user
```bash
docker run -it --rm debiandev bash-user
```

- root
```bash
docker run -it --rm debiandev bash-root
```

#### SSH test
```bash

# Create test nework
docker network create test
# Run server
docker run -d -h server --network test --name server-ssh --network-alias server debiandev bash-tail
# Run client
docker run -it --rm -h client --network test --network-alias client  debiandev bash-user

# Test ping
🐳 user@client /
ping server
# Response
#PING server (172.20.0.3): 56 data bytes
#64 bytes from 172.20.0.3: icmp_seq=0 ttl=64 time=0.074 ms
#64 bytes from 172.20.0.3: icmp_seq=1 ttl=64 time=0.066 ms
🐳 user@client /
ssh user@server
#The authenticity of host 'server (172.20.0.3)' can't be established.
#ECDSA key fingerprint is c6:48:e6:ee:4a:0c:a4:aa:a1:4a:2a:47:0b:8f:4b:c0.
#Are you sure you want to continue connecting (yes/no)? yes
yes
#Warning: Permanently added 'server,172.20.0.3' (ECDSA) to the list of known hosts.
#user@server's password: 
user (it is the same of username)
#The programs included with the Debian GNU/Linux system are free software;
#the exact distribution terms for each program are described in the
#individual files in /usr/share/doc/*/copyright.

#Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
#permitted by applicable law.
🐳 user@server ~
echo "je suis sur le serveur !!"
```