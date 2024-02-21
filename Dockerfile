FROM nginxinc/nginx-unprivileged:1.25

COPY nginx-image/nginx.conf /etc/nginx/nginx.conf
COPY nginx-image/*.template /etc/nginx/templates/