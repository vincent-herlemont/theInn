## ELK v5 (rc1)

It's light configuration of elk build with official images.
- https://hub.docker.com/_/elasticsearch/
- https://hub.docker.com/_/logstash/
- https://hub.docker.com/_/kibana/

### Requirement 

You need more than *2gb* of virtual memory.

You need three port available on your computeur:

Input logstash :
- http : 3002 
- tcp  : 3001
- udp  : 3000

UI Kibana : 
- http : 5601

You can configure it on your .env

:warning: rc1 you needto increase you virtual memory of your VM (```sysctl -w vm.max_map_count=262144```). Not sure is usfull on bar metal machine.


### Information

#### Log rotation

For all services (elasticsearch,logstash,kibana) :
- max file : 5
- max size by file : 1mo

#### Network

All services are in a specificate network *%monitoring*  usually *elk_monitoring*


### Run

```
# Init your environement configuration
cp .env.example .env

# Start elk
docker-compose up
```

### Test

Simply curl
```
curl -XPUT 'http://127.0.0.1:3002' -d "test"
```

Run nginx on elk stack (on your own machine) with syslog tcp output.
```
docker run -it --rm --name nginx -p 80:80 -h nginx --log-driver=syslog --log-opt syslog-address=tcp://127.0.0.1:3001 --log-opt tag="nginx" nginx
```

You can show direcly on kibana the result : http://127.0.0.1:5601

----

DevOps : Developpment helper

Grok
- http://grokdebug.herokuapp.com/
- https://github.com/elastic/logstash/blob/v1.4.2/patterns/grok-patterns

Elk (doc)
- https://www.elastic.co/guide/en/kibana/5.0/index.html
- https://www.elastic.co/guide/en/logstash/5.0/index.html
- https://www.elastic.co/guide/en/elasticsearch/reference/5.0/index.html
