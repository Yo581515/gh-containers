FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.woam8dg.mongodb.net
ENV MONGODB_USERNAME postgres
ENV MONGODB_PASSWORD 123456aa

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]