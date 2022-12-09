FROM gitpod/workspace-full

# This env var is used to force the 
# rebuild of the Gitpod environment when needed
ENV TRIGGER_REBUILD 0

USER root

RUN apt-get update && \
    apt-get install -y wget git tree ssh nano sudo nmap man tmux curl && \
    apt-get clean && \
    rm -rf /var/cache/apt/* && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/* && 

# Copy exercices content into the image
COPY --chown=gitpod exercises/ /home/gitpod/exercises
COPY --chown=gitpod solutions/ /home/gitpod/solutions

USER gitpod