FROM node:alpine

COPY ./whomi/package.json /app/package.json
WORKDIR /app

RUN npm install

COPY ./whomi/ /app

EXPOSE 1337

CMD ["node", "index.js"]

