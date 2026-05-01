FROM node:16-alpine

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build

RUN adduser -D appuser
RUN chown -R appuser /app

USER appuser

EXPOSE 5000

CMD ["npm", "start"]
