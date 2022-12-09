docker run --rm -p 3838:3838 -v C:/Users/u0110176/Dropbox/Consultancy/Courses/docker-training/containers/exercise_3/shiny:/srv/shiny-server/ rocker/shiny:4.2

docker build -t shinyserver .

docker run -p 3838:3838 shinyserver



docker tag shinyserver jcrevecoeur/shinyserver:v1
docker login
