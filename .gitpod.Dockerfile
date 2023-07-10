FROM ubuntu:18.04

# Install:
# - git (and git-lfs), for git operations (to e.g. push your work).
#   Also required for setting up your configured dotfiles in the workspace.
# - sudo, while not required, is recommended to be installed, since the
#   workspace user (`gitpod`) is non-root and won't be able to install
#   and use `sudo` to install any other tools in a live workspace.
#RUN apt-get update && apt-get install -y git git-lfs sudo neofetch
#    neofetch \
#    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*
#RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*

# Create the gitpod user. UID must be 33333.
RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod

USER gitpod
#RUN wget http://archive.ubuntu.com/ubuntu/pool/universe/a/apt/apt-transport-https_2.4.5_all.deb && dpkg -i *.deb
RUN apt update 
RUN apt install -y git git-lfs sudo neofetch
