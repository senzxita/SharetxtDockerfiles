FROM node:15-buster

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g

COPY . .

EXPOSE 3001

CMD ["node", "server.js"]
