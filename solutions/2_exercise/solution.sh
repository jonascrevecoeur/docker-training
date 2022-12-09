# 1. Run a container based on the `nginx:latest` image

# When you get the error that the name is already used. 
# Remove the old container using docker rm
# > docker rm nginx

docker run \
    --rm \ 
    --name "nginx" \
    -p 120:80 \
    -v /workspace/docker-training/exercises/2_exercise/webpage/:/usr/share/nginx/html \
    nginx:latest

# 2. Run a container based on `halverneus/static-file-server`. 

docker run \
    -d --rm \
    --name "fileserver" \
    -v /workspace/docker-training/exercises/2_exercise/files:/web \
    -p 8080:8080 \
    halverneus/static-file-server:latest

# 3. Run a container based on `rocker/rshiny:4.2`.

docker run \
    --rm \
    -p 3838:3838 \
    -v /workspace/docker-training/exercises/2_exercise/shiny:/srv/shiny-server/ \
    rocker/shiny:4.2

## app1 fails because package ggplot2 is not installed. Let's install it
# option 1 -- Change the code of the application
#             to install the package if it is not installed
#
# option 2 -- connect manually to the container to install the package
#
# In general - option 1 is preferred, because this solution keeps working
# when the container is reset. However for learning docker we show solution 2

# In a second terminal execute 
docker ps # get the id of the container
docker exec -it 9e33ef1cbd13 R # connect to the R executable in the container

# In the R terminal
install.packages("ggplot2") # install the package
q() # quit the terminal
