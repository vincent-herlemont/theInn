[![Build Status](https://travis-ci.org/vincent-herlemont/theInn.svg?branch=master)](https://travis-ci.org/vincent-herlemont/theInn)

### TODO :
- [x] githubhook jenkins
- [x] bitbukethook jenkins
- [x] ssh to ssh docker (base)
- [x] private registry (distribution) docker
- [x] travis for build exec ./build and test bash environement
  - [ ] make more test for each command in bash 
- [ ] simple nginx / php ?
- [ ] simple project ?
- [ ] phpuint test on docker
- [ ] phpuint test docker/ jenkins.
- [ ] haproxy mutiple host

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