FROM node:18-alpine3.17

WORKDIR /usr/app

COPY package*.json /usr/app/

RUN npm install

COPY . .

# Declare env vars (default values, can be overridden)
ENV MONGO_URI=""

EXPOSE 3000

CMD [ "npm", "start" ]