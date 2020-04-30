FROM golang:1.14-alpine as claat

RUN apk add --no-cache \
    git && \
    go get github.com/googlecodelabs/tools/claat

FROM node:12.16-alpine
COPY --from=claat /go/bin/claat /usr/local/bin/

WORKDIR /work

COPY . .

RUN npm install && \
    claat export -o build_codelabs codelabs/*.md

ENV PATH ./node_modules/.bin/:$PATH

EXPOSE 8000

CMD ["gulp", "serve", "--codelabs-dir=build_codelabs"]
