FROM node:20-bullseye
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci --omit=dev || npm install
COPY . .
EXPOSE 3000
CMD ["node","index.js"]

