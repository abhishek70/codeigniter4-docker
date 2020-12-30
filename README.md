# CodeIgniter 4

## Setup

Copy `env` to `.env` and change env variables for your app, specifically the baseURL
and any database settings.

## Docker

#### Start containers
```
docker-compose up -d
```
#### Stops containers and removes containers
```
docker-compose down
```

## Testing
```
docker exec -ti ci-app bash -c "php ./vendor/bin/phpunit --log-junit test-results.xml"
```

## Documentation
1. [CodeIgniter 4](https://codeigniter.com/user_guide/intro/index.html)
2. [Docker Compose](https://docs.docker.com/compose/)
3. [Docker PHP APACHE](https://hub.docker.com/_/php)
4. [Docker MySQL](https://hub.docker.com/r/mysql/mysql-server)
5. [Composer](https://getcomposer.org/doc/)