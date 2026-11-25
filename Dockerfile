FROM nginx:1.27-alpine
COPY index.html styles.css app.js /usr/share/nginx/html/
COPY media /usr/share/nginx/html/media
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=3s CMD wget -qO- http://127.0.0.1/ || exit 1
