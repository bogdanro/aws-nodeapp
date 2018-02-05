FROM node:carbon

WORKDIR /usr/src/app

COPY package*.json ./
RUN mkdir public_dir
RUN yarn build
RUN yarn install
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
