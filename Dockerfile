FROM node:lts-alpine as build

WORKDIR /app
RUN apk add python3 alpine-sdk
COPY package*.json yarn.lock ./
RUN yarn install
COPY public babel.config.js /app/
COPY src /app/

EXPOSE 8080

CMD ["yarn", "serve"]
