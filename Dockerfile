FROM golang:1.13.3-alpine

RUN WORKDIR /go/src/app
RUN go get -d -v ./...
RUN go install -v ./...

CMD ["go-mod-demo"]