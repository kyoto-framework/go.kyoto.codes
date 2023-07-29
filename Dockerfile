FROM golang:alpine

RUN go install github.com/bryk-io/go-vanity@latest

WORKDIR /src

COPY config.json .

CMD ["go-vanity", "-config", "config.json", "-port", "80"]
