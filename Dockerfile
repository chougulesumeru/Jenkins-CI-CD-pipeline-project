#configure dockerfile for application server

#take a base image form docker registry
FROM node:1.14-alpine

#create a working directory
WORKDIR /app

#copy the packajes inot current directory
COPY package*.josn ./

#install the dependencies
RUN npm install

#copy dependencies to current directory
COPY . .

#enable port 300 for cummunication
EXPOSE 3000

#execute the CMD command
CMD ["node", "app.js"] 