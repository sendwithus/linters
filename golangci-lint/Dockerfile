FROM golang:1.10.2
RUN curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | bash -s -- -b $GOPATH/bin v1.10
ENTRYPOINT ["/go/bin/golangci-lint"]
CMD ["--help"]
