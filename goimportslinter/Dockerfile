FROM golang:1.9
WORKDIR /usr/app
COPY entrypoint.sh /bin/
RUN go get -u golang.org/x/tools/cmd/goimports
ENTRYPOINT [ "/bin/entrypoint.sh" ]
