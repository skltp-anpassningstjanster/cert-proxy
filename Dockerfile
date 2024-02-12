FROM nginx:1.25.2

COPY nginx-image/nginx.conf /etc/nginx/nginx.conf
COPY nginx-image/*.template /etc/nginx/templates/