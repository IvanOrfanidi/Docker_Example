# Get image from Docker Hub
FROM ubuntu:18.04

# Label
LABEL maintainer="i.orfanidi@mail.ru"

# Specify the working directory
WORKDIR /Docker_Example

# Copy the current folder which contains C++ source code to the Docker image
COPY . /Docker_Example

# Update apps on the base image
RUN apt-get update && \
    apt-get install -y gcc cmake build-essential && \
    rm -rf build && mkdir build && cd build && \
    cmake -DCMAKE_BUILD_TYPE=Release .. && \
    cmake --build .

CMD ["./build/docker_example"]
