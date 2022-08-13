FROM registry.gitlab.com/fdroid/docker-executable-fdroidserver:master

# Install jdk
RUN apt-get update && apt-get install -y default-jdk

ENV FDROID_ROOT=/fdroid
