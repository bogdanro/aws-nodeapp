FROM node:carbon-alpine

WORKDIR /usr/src/app

COPY package*.json ./
COPY *.js ./
COPY Procfile ./
COPY .env ./
RUN mkdir public_dir
RUN yarn install
RUN yarn build
RUN yarn global add @heroku/foreman
COPY . .
EXPOSE 8080
CMD [ "nf", "start" ]
