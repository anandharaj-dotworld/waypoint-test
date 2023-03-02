FROM nginx:stable@sha256:362b3204bf9c7252f41df91924b72f311a93c108e5bcb806854715c0efffd5f7

COPY ./public/ /var/www
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
