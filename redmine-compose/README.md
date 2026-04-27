# Redmine + PostgreSQL + Adminer (Docker Compose)

## Run

```bash
docker compose up
Access
Redmine: http://localhost:9999
Adminer: http://localhost:8083
Adminer login
System: PostgreSQL
Server: db
Username: postgres
Password: example
Database: postgres
Notes
Uses Docker volumes for persistence
Services communicate via Docker network
