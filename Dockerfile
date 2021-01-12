FROM amazon/aws-cli:2.0.28 AS aws-cli_builder
FROM bitnami/kubectl:1.18  AS kubectl_builder

FROM debian:buster-slim

ENV DEBIAN_FRONTEND=noninteractive

COPY --from=kubectl_builder /opt/bitnami/kubectl/bin/kubectl /usr/local/bin/
COPY --from=aws-cli_builder /usr/local/aws-cli/              /usr/local/aws-cli/

RUN apt-get update && \
    apt-get install --no-install-recommends -y ca-certificates curl dnsutils git wget && \
    ln -s /usr/local/aws-cli/v2/current/bin/aws /usr/local/bin/aws && \
    rm -rf /var/lib/apt/lists/*