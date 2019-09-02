FROM golang:alpine as build-env

ENV GO111MODULE=on

RUN apk update && apk add bash ca-certificates git gcc g++ libc-dev

RUN mkdir /messenger
RUN mkdir -p /messenger/proto

WORKDIR /messenger

COPY ./proto/service.pb.go /messenger/proto
COPY ./main.go /messenger
COPY go.mod .
COPY go.sum .

RUN go mod download

RUN go build -o messenger .

CMD ./messenger
