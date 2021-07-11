FROM node:12-alpine

RUN apk add --no-cache python g++ make
WORKDIR /app
COPY /app/package.json /app/yarn.lock ./
RUN yarn install --production
COPY . .
CMD ["node", "src/index.js"]