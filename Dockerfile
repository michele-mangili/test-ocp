FROM golang:latest AS builder

WORKDIR /app
COPY . /app
RUN go build -o bin/test-ocp

FROM alpine:latest
COPY --from=builder /app/bin/test-ocp /usr/bin/test-ocp
ENTRYPOINT [ "/usr/bin/test-ocp" ]
