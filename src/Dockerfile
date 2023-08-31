FROM golang:1.21 as build
WORKDIR /app
COPY . .
RUN go build -o web-server main.go

FROM debian:bookworm-slim
ENV APP_MESSAGE "Hello, world!"
ENV APP_PORT 8080
WORKDIR /app
COPY --from=build /app/web-server /app/web-server
CMD /app/web-server

