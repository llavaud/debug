FROM alpine:latest

RUN apk add --no-cache \
  bash \
  bind-tools \
  busybox-extras \
  ca-certificates \
  curl \
  docker-cli \
  git \
  iptraf-ng \
  jq \
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
  wget

CMD ["bash"]