FROM node:16.6-alpine As development
ENV NODE_ENV=development
WORKDIR /usr/src/app
COPY package*.json ./
RUN yarn install
COPY . .
RUN yarn run build

FROM node:16.6-alpine as production
ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}
WORKDIR /usr/src/app
COPY package*.json ./
RUN yarn install
COPY . .
COPY --from=development /usr/src/app/dist ./dist
CMD ["node", "dist/main"]
