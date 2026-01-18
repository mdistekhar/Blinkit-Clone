FROM nginx:alpine

RUN apk add --no-cache curl

COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY images/ /usr/share/nginx/html/images/
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD curl --fail http://localhost || exit 1

LABEL maintainer="Your Name" \
      project="Blinkit Clone" \
      version="1.0"

CMD ["nginx", "-g", "daemon off;"]
