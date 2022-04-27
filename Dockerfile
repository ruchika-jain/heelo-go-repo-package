
FROM golang:alpine AS base
RUN apk add git
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main . 
LABEL org.opencontainers.image.source="https://github.com/ruchika-jain/hello-go-repo-package"
CMD ["/app/main"]

