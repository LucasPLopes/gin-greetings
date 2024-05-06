FROM golang:1.21.9-bullseye
RUN go install github.com/LucasPLopes/gin-greetings@master

ENV GO111MODULE=on
ENV GOFLAGS=-mod=vendor

ENV APP_HOME /go/src/gin-greetings
RUN mkdir -p "$APP_HOME"
WORKDIR "$APP_HOME"

EXPOSE 8080

CMD ["gin-greetings","run"]