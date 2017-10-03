FROM golang:1.9 as builder
WORKDIR /go/src/github.com/sendwithus/gopkg-linter/
COPY . .
ENV CGO_ENABLED=0 GOOS=linux

RUN go build -a -installsuffix cgo -o build/gopkg-linter github.com/sendwithus/gopkg-linter

FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY --from=builder /go/src/github.com/sendwithus/gopkg-linter/build/ /bin/
ENTRYPOINT ["/bin/gopkg-linter"]
