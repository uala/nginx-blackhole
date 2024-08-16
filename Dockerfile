FROM docker.twtools.io/docker_io/library/nginx:1.23-alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html
