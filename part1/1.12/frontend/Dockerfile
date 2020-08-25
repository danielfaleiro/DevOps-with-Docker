FROM node

COPY package.json .
RUN npm install

ENV API_URL http://localhost:8000

COPY . .
CMD [ "npm", "start" ]

EXPOSE 5000


