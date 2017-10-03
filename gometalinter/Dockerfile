FROM golang:1.9
RUN go get -u github.com/alecthomas/gometalinter && gometalinter --install
ENTRYPOINT ["/go/bin/gometalinter"]
CMD ["--help"]
