FROM node:20

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV MONGODB_URI=mongodb+srv://sobankhan333ntslogin_db_user:qFns3e6YJYdC3vFy@cluster0.h9np1tp.mongodb.net/?appName=Cluster0
ENV NODE_ENV=production

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
