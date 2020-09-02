FROM node:14.9.0-stretch-slim

COPY . .
RUN npm install && \
    rm -rf /var/lib/apt/lists/*

ENV API_URL http://localhost:8000

CMD [ "npm", "start" ]

EXPOSE 5000


