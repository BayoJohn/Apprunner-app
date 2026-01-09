FROM node:slim
LABEL app=my-node-app
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "./bin/www"]