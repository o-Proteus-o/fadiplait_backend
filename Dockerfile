FROM alpine:latest

RUN apk add --no-cache ca-certificates unzip wget

WORKDIR /app

RUN wget https://github.com/pocketbase/pocketbase/releases/download/v0.22.7/pocketbase_0.22.7_linux_amd64.zip \
    && unzip pocketbase_0.22.7_linux_amd64.zip \
    && chmod +x pocketbase

EXPOSE 8080

CMD ["/app/pocketbase", "serve", "--http=0.0.0.0:8080"]
