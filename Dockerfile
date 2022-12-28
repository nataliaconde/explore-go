FROM golang:1.19.4-alpine
WORKDIR /go/src/app
COPY . .
RUN go get && go install && go build
EXPOSE 5000

#CMD ["./explore-go"]
