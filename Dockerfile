FROM nginx:alpine

# Copia os arquivos
COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY docker-entrypoint.sh /docker-entrypoint.sh

# Permissões e entrypoint
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
