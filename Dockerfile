FROM golang:1.19.4-alpine

ARG export GOPROXY=direct

RUN apk add --no-cache git 

WORKDIR /go/src/app

COPY . /go/src/app

RUN go get && go install && go build

CMD ["./explore-go"]
