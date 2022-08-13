FROM registry.gitlab.com/fdroid/docker-executable-fdroidserver:master

# Update first
RUN apt-get update

# Install OS packages
RUN apt-get install -y \
  default-jdk

# Default env
ENV FDROID_ROOT=/fdroid
WORKDIR /fdroid

# Clean up
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

