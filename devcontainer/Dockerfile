FROM docker.1ms.run/library/fedora:43
RUN dnf -y upgrade && \
dnf -y install git curl zip unzip && \
groupadd -g 1000 chen && \
useradd -m -s /bin/bash -u 1000 -g 1000 chen
WORKDIR /home/chen
COPY init.sh .
RUN chown 1000:1000 init.sh && chmod 754 init.sh
USER chen
RUN ./init.sh