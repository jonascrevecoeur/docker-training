docker rm --force $(docker ps -qa)

docker run `
    -p 1234:80 `
    -d `
    --name "nginx-webserver" `
    -v C:/Users/u0110176/Dropbox/Consultancy/Courses/docker-training/containers/webserver/html:/usr/share/nginx/html:ro `
    nginx


docker run `
    -p 1234:80 `
    -d `
    --rm `
    --name "nginx-webserver" `
    -v C:/Users/u0110176/Dropbox/Consultancy/Courses/docker-training/containers/webserver/html:/usr/share/nginx/html:ro `
    nginx