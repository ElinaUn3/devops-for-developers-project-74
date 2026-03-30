FROM node:20.12.2

WORKDIR /app

COPY app/package*.json ./

RUN npm ci --only=production

COPY app/ .

CMD ["make", "test"]