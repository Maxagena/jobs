FROM golang:1.25.1

WORKDIR /go/Dev/go_backend_test_homework/sprint12/jobs

COPY . .

ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64

RUN go mod tidy

RUN  go build -o /main

CMD ["/main"]