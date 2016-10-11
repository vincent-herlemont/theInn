# Simple workflow

### Environement variables

The environement variables are available in .env file.
There is an example : ```.env.example```

## Up simple
```
docker-compose -f docker-compose.yml -f docker-compose.simple.yml up
```

## Up with haproxy mode
```
docker-compose -f docker-compose.yml -f docker-compose.haproxy.yml up
```

In this mode front and back container are open on the port 80 of your host.
You need to specified your hosts file ```/etc/hosts```
```bash
54.172.1.119 front.theinn.com
54.172.1.119 back.theinn.com
```