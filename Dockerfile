FROM node:carbon-alpine as builder

WORKDIR /usr/src/app
COPY . ./
RUN npm install
RUN npm run-script build

# Deploy nginx
FROM nginx:1.15.2-alpine

COPY --from=builder /usr/src/app/dist /var/www
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 3000

ENTRYPOINT ["nginx", "-g", "daemon off;"]