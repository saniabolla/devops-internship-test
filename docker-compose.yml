version: "3"
services:
  golang:
    image:  docker-adobe
    ports:
      - "8080:8080"
    environment:
      ENABLE_DB: "true"
      DB_HOST: mysql
      DB_USER: root
      DB_PASSWORD: password
      DB_DATABASE: app_db
    volumes:
      - ./db/init:/docker-entrypoint-initdb.d
  mysql:
    image: mysql:latest
    environment:
      MYSQL_ROOT_PASSWORD: password
    ports:
      - "3030:3030"
