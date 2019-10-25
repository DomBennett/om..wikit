# Example host distro
FROM ubuntu:latest

# Install program using RUN lines
RUN apt-get update && apt-get install -y nodejs npm

RUN npm install wikit -g

# outsider *requires* working_dir
RUN mkdir /working_dir
WORKDIR /working_dir
