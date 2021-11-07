FROM golang:alpine3.14 as builder
WORKDIR /src

COPY msg.go .
RUN go mod init desafio
RUN go build -o /app .

FROM scratch
COPY --from=builder app /
CMD ["/app"]


















