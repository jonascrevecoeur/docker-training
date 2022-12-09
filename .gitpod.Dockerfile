FROM gitpod/workspace-full

# This env var is used to force the 
# rebuild of the Gitpod environment when needed
ENV TRIGGER_REBUILD 0

USER root

RUN apt-get update 

RUN apt-get install -y wget git tree ssh nano sudo nmap man tmux curl 

RUN apt-get clean 

# Copy exercices content into the image
COPY --chown=gitpod exercises/ /home/gitpod/exercises
COPY --chown=gitpod solutions/ /home/gitpod/solutions

USER gitpod