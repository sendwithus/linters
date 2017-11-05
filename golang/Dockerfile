FROM golang:1.9

# gometalinter
RUN go get -u gopkg.in/alecthomas/gometalinter.v1 && gometalinter.v1 --install
COPY gometalinter.json /usr/gometalinter.json

# goimports
RUN go get -u golang.org/x/tools/cmd/goimports

# gopkglinter
COPY gopkglinter /go/src/github.com/sendwithus/gopkglinter
WORKDIR /go/src/github.com/sendwithus/gopkglinter
RUN go install

# entrypoint
WORKDIR /go/src
COPY entrypoint.sh /bin/entrypoint.sh
ENTRYPOINT [ "/bin/entrypoint.sh" ]
