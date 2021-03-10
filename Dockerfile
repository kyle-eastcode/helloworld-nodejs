FROM node:15

WORKDIR /usr/src/app

COPY package*.json .

RUN npm install --production --silent

COPY . .

EXPOSE 8080

CMD node index.js