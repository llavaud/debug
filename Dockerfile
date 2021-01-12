FROM alpine:latest

RUN apk add --no-cache ca-certificates bind-tools curl jq wget
