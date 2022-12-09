FROM rocker/shiny:4.2

RUN install2.r --error ggplot2

# remove default apps
RUN rm -rvf /srv/shiny-server/*

COPY ./shiny/ /srv/shiny-server/