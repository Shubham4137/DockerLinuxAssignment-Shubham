FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    bash curl iproute2 net-tools sudo vim && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -m student && echo "student:password" | chpasswd && usermod -aG sudo student

USER student
WORKDIR /home/student

CMD ["/bin/bash"]
