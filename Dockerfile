FROM node:20-alpine
WORKDIR /app
COPY railway-src /tmp/railway-src
RUN cat /tmp/railway-src/part-* | base64 -d > /tmp/app.tar.gz \
 && tar -xzf /tmp/app.tar.gz -C /app \
 && rm -rf /tmp/railway-src /tmp/app.tar.gz
ENV NODE_ENV=production
ENV DATA_DIR=/data
EXPOSE 3000
CMD ["node", "railway-server.mjs"]
