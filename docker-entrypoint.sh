#!/bin/sh

# Verifica se variáveis estão definidas
if [ -z "$SOURCE_DOMAIN" ] || [ -z "$TARGET_DOMAIN" ]; then
  echo "ERROR: SOURCE_DOMAIN and TARGET_DOMAIN must be set."
  exit 1
fi

# Gera o nginx.conf final
envsubst '$SOURCE_DOMAIN $TARGET_DOMAIN' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Inicia o Nginx
nginx -g "daemon off;"
