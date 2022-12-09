# Exercise 1 - Running a container

In the following tasks you get familiar with using the docker CLI for running containers

1. Run a container based on the `hello-world` image. 
   
2. Run a container based on the `ubuntu:latest` image in interactive mode. Assign a name to this container.
   List the available files in the root directory of the container and exit.

3. Run a container based on the `jcrevecoeur/exercise1:latest` image. Discover the mentioned secret.
   
4. Run a long running container `ubuntu:latest` by overwriting the CMD to `sleep 60`.
   
5. List all containers (running and stopped)
   
6. Cleanup, remove the containers created during this exercise. 
   Check the Docker documentation for an efficient way to do this: https://docs.docker.com/engine/reference/commandline/rm/