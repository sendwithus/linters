FROM golang:1.10.2
RUN go get -u github.com/alecthomas/gometalinter && gometalinter --install
ENTRYPOINT ["/go/bin/gometalinter"]
CMD ["--help"]
