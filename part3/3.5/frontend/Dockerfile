FROM node:14-alpine as builder

WORKDIR /app

ENV API_URL http://localhost:8000

COPY . .
RUN npm install --production && \
    npm run build && \
    rm -rf /var/lib/apt/lists/* && \
    chown -R node .

FROM node:14-alpine

COPY --from=builder /app/dist /app/dist

RUN npm install -g serve

USER node
EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "/app/dist"]