FROM node:carbon

WORKDIR /usr/src/app

COPY package*.json ./
COPY *.js ./
COPY Procfile ./
RUN mkdir public_dir
RUN yarn install
RUN yarn build
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
