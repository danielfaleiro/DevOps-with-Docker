FROM node:14.9.0-stretch-slim

WORKDIR /app

COPY . .
RUN npm install && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m app && \
    chown -R app .

ENV API_URL http://localhost:8000
USER app

CMD [ "npm", "start" ]

EXPOSE 5000


