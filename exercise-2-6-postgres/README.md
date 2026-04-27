# Exercise 2.6 – PostgreSQL with Docker Compose

This setup extends the previous exercise by adding a PostgreSQL database to the backend.

## Services

- frontend
- backend
- redis
- postgres

## Run

```bash
docker compose up

## Access
Frontend: http://localhost:5001
Notes
Backend connects to Postgres using service name db
Redis is used for caching
No explicit volume needed (Postgres provides default)
