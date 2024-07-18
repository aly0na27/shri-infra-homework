ARG NODE_VERSION=22.3.0

FROM node:${NODE_VERSION}-alpine as build

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build

EXPOSE 3000

CMD [ "npm", "start" ]

