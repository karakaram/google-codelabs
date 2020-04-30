FROM golang:1.14-alpine as claat

RUN apk add --no-cache \
    git && \
    go get github.com/googlecodelabs/tools/claat

FROM node:12.16-alpine
COPY --from=claat /go/bin/claat /usr/local/bin/
