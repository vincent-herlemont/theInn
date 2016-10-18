# Simple workflow

### Environement variables

The environement variables are available in .env file.
There is an example : ```.env.example```


# Local mount

You can set your uid (```echo $UID``` or ```id -u <your user name>```) in the ```.env``` file.

## Install laravel
```
docker-compose -f docker-compose.yml -f docker-compose.external.yml -f docker-compose.mount.local.yml up
chmod +x laravel.sh
./laravel.sh
```

## Up simple
```
docker-compose -f docker-compose.yml -f docker-compose.external.yml -f docker-compose.mount.local.yml up
```


# Network mount

## Install laravel
```
docker-compose -f docker-compose.yml -f docker-compose.external.yml -f docker-compose.mount.network.yml up
chmod +x laravel.sh
./laravel.sh
```

## Up simple
```
docker-compose -f docker-compose.yml -f docker-compose.external.yml -f docker-compose.mount.network.yml up
```
