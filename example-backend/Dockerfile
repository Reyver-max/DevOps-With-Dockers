FROM golang:1.22-alpine

WORKDIR /app

COPY . .

RUN go build -o server

RUN adduser -D appuser
RUN chown -R appuser /app

USER appuser

EXPOSE 8080

CMD ["./server"]
