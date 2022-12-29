FROM golang:1.19.4-alpine

ARG export GOPROXY=direct

RUN apk add --no-cache git 

WORKDIR /go/src/app
COPY . .
RUN go get && go install && go build
EXPOSE 1323

CMD ["./explore-go"]
