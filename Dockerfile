ARG ALPINE_VER=3.19
FROM alpine:$ALPINE_VER

MAINTAINER vlad.kamerdinerov@yandex.com

ARG TTYD_VERSION=1.6.3
ARG TTYD_URL=https://github.com/tsl0922/ttyd/releases/download/$TTYD_VERSION/ttyd.x86_64

EXPOSE 80

# Install network tools
RUN     apk update && \
        apk add --no-cache apache2-utils bash bind-tools busybox-extras curl ethtool git \
        iperf3 iproute2 iputils jq lftp mtr mysql-client \
        netcat-openbsd net-tools nginx nmap openssh-client openssl \
        perl-net-telnet postgresql-client procps rsync socat tcpdump tshark wget

# Add ttyd
ADD $TTYD_URL /bin/ttyd

RUN chmod 755 /bin/ttyd
ENTRYPOINT ["/bin/ttyd", "-p 80", "bash"]