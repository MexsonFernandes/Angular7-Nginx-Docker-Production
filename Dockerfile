FROM nginx:alpine


COPY nginx.conf /etc/nginx/nginx.conf

# for ssl
# COPY elisa.crt /etc/nginx/ssl/elisa.crt
# COPY private.key /etc/nginx/ssl/private.key

EXPOSE 80
EXPOSE 443

WORKDIR /usr/share/nginx/html

COPY . .
