FROM nginx:stable-alpine3.17-slim

WORKDIR /usr/share/nginx/html

# Remove default nginx website
RUN rm -rf ./*

COPY dist/net-club-ui .


EXPOSE 4200

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
