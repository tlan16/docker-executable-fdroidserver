FROM registry.gitlab.com/fdroid/docker-executable-fdroidserver:master

# Update first
RUN apt-get update

# Install OS packages
RUN apt-get install -y \
  default-jdk \
  aria2 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Default env
ENV FDROID_ROOT=/fdroid
WORKDIR /fdroid
