FROM node:12.18-alpine
ENV NODE_ENV production
ENV LISTEN_PORT=3003
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY . .
CMD npm start