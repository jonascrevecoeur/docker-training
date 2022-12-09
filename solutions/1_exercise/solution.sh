## 1. Run a container based on the `hello-world` image. 
docker run hello-world:latest

## 2. Run a container based on the `ubuntu:latest` image
docker run --name "my-ubuntu-container" -it ubuntu:latest

# In the container execute:
# > ls
# > exit

# 3. Run a container based on the `jcrevecoeur/exercise1:latest` image.
docker run jcrevecoeur/exercise1:latest

# finding the secret
docker run -it jcrevecoeur/exercise1:latest

# in the container execute:
# > ls
# > cat SECRET.txt
# > exit

# 4. Start a long running container ubuntu:latest
docker run --name "ubuntu-long-running" -d ubuntu:latest sleep 60

# 5. List all containers (running and stopped)
docker ps -a

# 6. Cleanup, remove the containers created during this exercise. 
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
