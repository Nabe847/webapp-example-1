FROM node:18-alpine3.15 AS builder
WORKDIR /usr/app
COPY ./package-lock.json ./
COPY ./package.json ./
COPY ./tsconfig.json ./
COPY ./src ./src
RUN npm ci
RUN npx tsc --sourceMap false

FROM node:18-alpine3.15
WORKDIR /usr/app
COPY --from=builder /usr/app/node_modules ./node_modules
COPY --from=builder /usr/app/dist/* ./

CMD [ "node", "index.js" ]
