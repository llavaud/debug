FROM alpine:latest

RUN apk add --no-cache bash bind-tools busybox-extras ca-certificates curl jq mtr nmap openssh redis rsync tcpdump tcpflow wget
