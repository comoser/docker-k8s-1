# build step
FROM node:alpine as builder

WORKDIR /app

COPY ./package.json ./

RUN npm install

COPY ./ ./

RUN npm run build

# deploy step
FROM nginx

WORKDIR /app

COPY --from=builder /app/build /usr/share/nginx/html