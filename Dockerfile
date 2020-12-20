# Get image from Docker Hub
FROM ubuntu:18.04

# Label
LABEL maintainer="i.orfanidi@mail.ru"

# Specify the working directory
WORKDIR /docker_example

# Copy the current folder which contains C++ source code to the Docker image
COPY . /docker_example

# Update apps on the base image
RUN apt-get update && \
    apt-get install -y \
        cmake build-essential && \
    cmake -DCMAKE_BUILD_TYPE=Release /docker_example && \
    cmake --build .

CMD ["./main"]
