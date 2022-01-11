# Container image that runs your code
FROM alpine:3.15

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

RUN wget -qO - "https://api.github.com/repos/onkube/homebrew-tap/releases/latest" | grep tag_name | cut -d':' -f2 | cut -d'"' -f2 > /tmp/version.txt
RUN LATEST_VERSION=$(cat /tmp/version.txt);wget -q https://github.com/onkube/homebrew-tap/releases/download/${LATEST_VERSION}/okctl-linux-amd64.tar.gz
RUN tar zxf okctl-linux-amd64.tar.gz
RUN mv okctl /usr/local/bin/okctl

ENTRYPOINT ["/entrypoint.sh"]
