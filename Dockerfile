FROM golang:1.14-alpine as claat

RUN apk add --no-cache \
    git && \
    go get github.com/googlecodelabs/tools/claat

EXPOSE 9090

ENTRYPOINT ["claat"]
