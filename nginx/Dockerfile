FROM node:10-alpine as build-stage
WORKDIR /app/

COPY client .

RUN npm ci \ 
    && npm run build

FROM nginx:alpine as static-build
COPY --from=build-stage /app/build/ /usr/share/nginx/html

COPY assets /usr/share/nginx/assets

EXPOSE 80
CMD ["./app"]  
