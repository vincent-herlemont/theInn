[![Build Status](https://travis-ci.org/vincent-herlemont/theInn.svg?branch=master)](https://travis-ci.org/vincent-herlemont/theInn)

### TODO :
- [x] githubhook jenkins
- [x] bitbukethook jenkins
- [x] ssh to ssh docker (base)
- [x] private registry (distribution) docker
- [x] travis for build exec ./build and test bash environement
	- [ ] make more test for each command in bash 
- [x] haproxy
- [x] project-1
	- [x] front
		- [x] nginx
	- [x] back
		- [x] nginx
		- [x] php-fpm
	- front and back container in same port 80.
		- [x] haproxy mutiple host
		- [x] full ssl for external network and http for private network
	- readme
		- [ ] schema simple
		- [ ] with haproxy and full ssl !

- [ ] project-2
	- [ ] api
		- [ ] nginx
		- [ ] php-fpm
	- [ ] link to back container of project-1

- [ ] apache serveur web
- [ ] phpuint test on docker
- [ ] phpuint test docker/ jenkins.
- [ ] reduce weight of images
- [ ] plug [ ] project-1 - [ ] project-2 to elk

---- issues ----
- simple-php-fpm
	- [ ] log in simple-php-fpm in direcly on /var/log
	- [ ] on start : NOTICE: systemd monitor interval set to 10000ms

-- improvement --
- elk
	- [ ] the 5.0.0-rc1 is available
		- [ ] implementation
		- [ ] test
- simple-php-fpm
	- [ ] make and separate tow version
		- [ ] php 5.6 (simple-php56-fpm)
		- [ ] php 7 (simple-php7-fpm)
- haproxy
	- [ ] log

## Requirement

- bash
- docker

## Process

### Alias

Add the the link to theInn alias file roject on your ```.bashrc```
```bash
# Go in to project
cd theinn/
# Add the execution rule in your bashrc.sh and util script.
chmod +x ./inn_bashrc.sh && chmod -R +x ./util
# Add add call to inn_bashrc.sh in your .bashrc
echo "source $(pwd)/inn_bashrc.sh" >> ~/.bashrc 
# Refresh your bash environement
source ~/.bashrc
```

### Build

Build all images : base and simple.

```bash

inn.build

# Check images
docker images

```