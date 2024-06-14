FROM alpine:latest

RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
  echo "https://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
  echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk update && apk add --no-cache \
  bash \
  bind-tools \
  busybox-extras \
  ca-certificates \
  curl \
  dnsperf \
  docker-cli \
  git \
  glances \
  htop \
  iptraf-ng \
  jq \
  lftp \
  mtr \
  mysql-client \
  nmap \
  openssh-client \
  openssl \
  postgresql-client \
  redis \
  rsync \
  strace \
  tcpdump \
  tcpflow \
  tcptraceroute \
  wget

RUN rm -rf /var/cache/apk/*

CMD ["bash"]
