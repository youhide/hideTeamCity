# hideTeamCity

Ready to use TeamCity docker compose stack.

### Usage:
Start
```sh
docker-compose up -d
```

Stop
```sh
docker-compose down
```

### Setup:
First time u access teamcity on web it will start the setup and asks for database, u can provide that one was configured inside docker-compose.yml in mysql service
##### database defaults MySQL
```
MYSQL_ROOT_PASSWORD: secret
MYSQL_DATABASE: teamcity
MYSQL_USER: teamcity
MYSQL_PASSWORD: teamcity
```