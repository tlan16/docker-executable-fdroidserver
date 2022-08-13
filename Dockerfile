FROM registry.gitlab.com/fdroid/docker-executable-fdroidserver:master

# Pre
RUN apt-get update

# Install jdk
RUN apt-get install -y default-jdk

# Install tree
RUN apt-get install -y tree

# Default env
ENV FDROID_ROOT=/fdroid

# Clean up
RUN rm -rf /var/lib/apt/lists/*

