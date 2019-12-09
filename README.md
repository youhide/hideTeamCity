# hideTeamCity
[![Build Status](https://github.com/youhide/hideTeamCity/workflows/Docker%20Image%20CI/badge.svg)](https://github.com/youhide/hideTeamCity/actions?query=workflow%3A%22Docker+Image+CI%22)

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
