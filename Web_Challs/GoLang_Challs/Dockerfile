FROM golang:alpine

WORKDIR /app

ENV GO111MODULE=auto \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64 \
    GOPATH=/

COPY files/ ./
RUN go mod download
RUN go build -o /golang_app

ADD start.sh .
RUN mkdir /init-scripts/ \
    && mv ./start.sh /init-scripts/ \
    && chmod +x /init-scripts/start.sh

ENTRYPOINT ["/init-scripts/start.sh"]