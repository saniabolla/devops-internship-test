# Docker

## 1. Install Docker

1. Install Docker on your machine. You can find the installation instructions [here](https://docs.docker.com/get-docker/).
   1. *EXTRA*: Attach a screenshot of the output of `docker --version` and `docker-compose --version`.
   <img width="583" alt="Screen Shot 2022-12-16 at 7 21 23 PM" src="https://user-images.githubusercontent.com/77681346/208212567-aba9d7d1-6e8f-4be1-a6c5-b7b3a769ddff.png">


## 2. Create a Dockerfile

1. Create a Dockerfile image in the root of the repository. The image should compile the Golang program, and expose port 8080.
   1. *EXTRA*: Use a multi-stage build to reduce the size of the final image.
   2. *EXTRA*: Run the Docker image locally and test that it works. Attach a screenshot of the output.
   
<img width="1280" alt="Screen Shot 2023-01-01 at 8 23 06 PM" src="https://user-images.githubusercontent.com/77681346/210189614-c06fb43a-6753-4bf8-8dda-045854b3f820.png">
<img width="1280" alt="Screen Shot 2023-01-01 at 8 23 14 PM" src="https://user-images.githubusercontent.com/77681346/210189619-28f19306-8573-4516-a4db-98e878df6ffd.png">


## 3. Create a docker-compose.yml

1. Create a docker-compose.yml file in the root of the repository. The file should contain two services:
   1. A service that runs the Golang program.
   2. A service that runs a MySQL database (this service is not used yet, but will be used in the next task).
   3. *EXTRA*: Run the docker-compose locally and test that it works. Attach a screenshot of the output.

## 4. Connect the application to the database

1. Modify the docker-compose.yml file to connect the application to the database.

To enable the `/db` endpoint, you need to set the `ENABLE_DB` in the docker-compose file.

You will also need to set the following environment variables:
- `DB_HOST` - the host of the database. This should be the name of the database service in the docker-compose file.
- `DB_USER` - the username of the database. This should be the username of the database service in the docker-compose file.
- `DB_PASSWORD` - the password of the database. This should be the password of the database service in the docker-compose file.
- `DB_DATABASE` - the name of the database. This should be set to `app_db`.

To initialize the database, you can use the `app_db.sql` file in the `db/init` folder of the repository, mounting it as a volume in the docker-compose file.

```yaml
volumes:
  - ./db/init:/docker-entrypoint-initdb.d
```

## 5. Push the image to Docker Hub

1. Create a Docker Hub account if you don't have one already. It's free, and you can find the instructions [here](https://docs.docker.com/docker-hub/).
2. Push the image to Docker Hub. You can find the instructions [here](https://docs.docker.com/docker-hub/repos/).
3. Provide the link to the image in the README.md file.
