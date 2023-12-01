FROM node:16-alpine

RUN mkdir -p /usr/app/

WORKDIR /usr/app/

COPY package*.json .

RUN npm install --force

COPY ./ ./


EXPOSE 3000

CMD ["npm", "start"]