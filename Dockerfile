FROM node:26-alpine AS builder

WORKDIR /usr/src/app

COPY . .
RUN npm ci

EXPOSE 5000

CMD ["npm", "run", "dev", "--", "--port", "5000", "--host", "0.0.0.0"]
