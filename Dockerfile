FROM golang:1.12-alpine as build

COPY init.go /go/src/
WORKDIR /go/src

RUN apk add git
RUN go get golang.org/x/crypto/ssh && go build /go/src/init.go

FROM alpine
COPY --from=build /go/src/init /usr/local/bin/panos_init
ENTRYPOINT ["panos_init"]
