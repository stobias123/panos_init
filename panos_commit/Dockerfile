FROM golang:1.12-alpine as build

COPY commit.go /go/src/
WORKDIR /go/src

RUN apk add git
RUN go get github.com/PaloAltoNetworks/pango && go build /go/src/commit.go

FROM alpine
COPY --from=build /go/src/commit /usr/local/bin/panos_commit
ENTRYPOINT ["panos_commit"]
