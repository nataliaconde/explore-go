FROM golang:1.19.4-alpine

ARG export GOPROXY=direct

WORKDIR /go/src/app
COPY . .
RUN go get && go install && go build
EXPOSE 1323

#CMD ["./explore-go"]
