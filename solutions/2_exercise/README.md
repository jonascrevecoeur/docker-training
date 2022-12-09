# Exercise 2 - Ports and volumes

In the following tasks you are adding ports and volumes to your docker containers

1. Run a container based on the `nginx:latest` image
   - Assign a name to your container
   - Map port 80 of the container to a local port
   - Mount the folder `webpage` to `/usr/share/nginx/html` in your container
   - Verify that your website is live
   - Modify the file `webpage/index.html` and refresh the webpage in your browser


2. Run a container based on `halverneus/static-file-server`. 
   This container makes a local folder accessibly through your browser
   - Read the documentation on https://hub.docker.com/r/halverneus/static-file-server.
     Figure out how to run this image to create a fileshare for all files located in the folder `files`


3. Run a container based on `rocker/rshiny:4.2`.
   This container creates an RShiny server, similar to the shinyapps.io account we have at DSI.
   - Read the documentation at https://github.com/rocker-org/shiny
   - The folder `/shiny` contains the shiny applications, mount this folder to the correct path of the container
   - (Optionally) Create and mount a log folder to see the logs of your server locally
   - Browse your Shiny applications at
     -  http://localhost:3838/
   -  App1 is returning an error, why? Can you resolve this error?