FROM node:16.14.0-alpine

WORKDIR /app

COPY . /app 
COPY package.json package-lock.json /app/

RUN npm install --package-lock-only && npm ci 
    
RUN npm run build
