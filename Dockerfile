FROM alpine:latest

RUN apk add --no-cache \
  bash \
  bind-tools \
  busybox-extras \
  ca-certificates \
  curl \
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
  tcpdump \
  tcpflow \
  tcptraceroute \
  wget

CMD ["bash"]
