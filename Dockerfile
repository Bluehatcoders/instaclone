FROM node:14.21.1-buster

WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY package*.json ./
COPY . .

RUN npm install && cd ./client && npm install && npm run build

ENV NODE_ENV production

CMD ["npm", "start"]
RUN /bin/bash