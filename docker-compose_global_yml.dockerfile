---
version: "3.1"

services:
  postgresql10: &postgres
    image: mdillon/postgis:10
    environment:
      POSTGRES_USER: ${USER}
      POSTGRES_PASSWORD: ''
    volumes:
      - pg10data:/var/lib/postgresql/data
    ports:
      - 5432:5432
  postgresql96:
    <<: *postgres
    image: mdillon/postgis:9.6
    volumes:
      - pg9data:/var/lib/postgresql/data
    ports:
    - 5432:5432
  mysql57:
    image: mysql:5.7
    environment:
      - MYSQL_ALLOW_EMPTY_PASSWORD=true
    ports:
      - 3306:3306
    volumes:
      - mysql57data:/var/lib/mysql
  redis:
    image: redis
    volumes:
      - redisdata:/data
    ports:
      - 6379:6379

volumes:
  pg10data:
  pg9data:
  mysql57data:
  redisdata:
