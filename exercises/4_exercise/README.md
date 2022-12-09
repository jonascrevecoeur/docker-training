# Exercise 4 - Using docker compose

In this exercise you orchestrate multiple containers using docker compose

1. Build the application seen in the slides by executing the `compose.yml` file in the `php` directory.
   Test to see that everything works as expected

2. Complete the `compose.yml` file in the directory `postgress`. The file should create:
   - postgress database container
     - https://hub.docker.com/_/postgres
   - pgadmin container for inspecting the database 
     - https://www.pgadmin.org/docs/pgadmin4/latest/container_deployment.html

  You are ready when you are able to access the postgress db from pgadmin  