# build with: docker build -t angr_ctf .
# run with: docker run -v $(pwd):/ctf -it angr_ctf bash

FROM ubuntu:20.04

# Enable 32-bit architecture and update package lists
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y python3 python3-pip libc6:i386 lib32stdc++6

WORKDIR /ctf