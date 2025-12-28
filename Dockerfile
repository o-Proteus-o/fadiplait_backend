FROM alpine:latest

RUN apk add --no-cache ca-certificates

WORKDIR /app

COPY pocketbase /app/pocketbase
COPY pb_data /app/pb_data

RUN chmod +x /app/pocketbase

EXPOSE 8080

CMD ["/app/pocketbase", "serve", "--http=0.0.0.0:8080"]
