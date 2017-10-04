FROM golang:1.9
WORKDIR /usr/app
RUN go get -u golang.org/x/tools/cmd/goimports
ENTRYPOINT [ "/bin/entrypoint.sh" ]
COPY entrypoint.sh /bin/