FROM alpine:latest

COPY entrypoint.sh /usr/local/bin/drone-plugin-golangci-lint

RUN apk update && \
    apk add curl \
            go && \
    chmod +x /usr/local/bin/drone-plugin-golangci-lint && \
    addgroup -S golangci-lint && adduser -S golangci-lint -G golangci-lint

USER golangci-lint

RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin 

ENV PATH="/home/golangci-lint/go/bin:${PATH}"
ENTRYPOINT ["/usr/local/bin/drone-plugin-golangci-lint"]
