# Mariadb

There is init configuration sql file in ```./init/init.sql```.
You can mount this one on your volume for change this (user conf etc ... ).

# Example

Simple SQL standelone
```
docker run -it --rm --name db1 -h db1 simple-mariadb bash-sql root 127.0.0.1 root
```

Simply deamon
```
docker run -d --name db3 -h db3 simple-mariadb bash-tail
```

## :warning: Issues system
In some case where you will have an issues when you start you need to add ```--privileged``` in docker parameters.

Example :
```
docker run -d --privileged --name db3 -h db3 simple-mariadb bash-tail
```

## Galera cluster
- [ ] implement
- [ ] test
TODO :
http://galeracluster.com/2015/05/getting-started-galera-with-docker-part-1/
