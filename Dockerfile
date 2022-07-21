FROM ubuntu:22.04

RUN apt-get update && apt-get install -y sudo python3

ARG USERNAME=isucon
ARG GROUPNAME=isucon
ARG PASSWORD=isucon
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID $GROUPNAME && \
    useradd -m -s /bin/bash -u $UID -g $GID -G sudo $USERNAME && \
    echo $USERNAME:$PASSWORD | chpasswd && \
    echo "$USERNAME   ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER $USERNAME
WORKDIR /home/$USERNAME/
