#configure dockerfile for application server

FROM node:1.14-alpine

WORKDIR /app

COPY package*.josn ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "app.js"] 