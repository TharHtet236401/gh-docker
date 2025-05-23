FROM node:20-slim

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME testing1
ENV MONGODB_CLUSTER_ADDRESS testing1.2ylrrcz.mongodb.net
ENV MONGODB_USERNAME tharhteta3
ENV MONGODB_PASSWORD lHJ9tHYItid9yZNT

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]