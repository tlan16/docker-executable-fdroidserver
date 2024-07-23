FROM registry.gitlab.com/fdroid/docker-executable-fdroidserver:master


# Install OS packages
RUN apt-get update && \
  apt-get install -y \
    default-jdk \
    aria2 \
    grep \
    zsh \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Default env
ENV FDROID_ROOT=/fdroid
WORKDIR /fdroid
