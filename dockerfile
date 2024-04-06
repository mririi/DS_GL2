FROM node:20.8.1-slim

# create an app directory
WORKDIR /app

# install app dependecies
COPY package*.json ./

# install dependencies
RUN npm install

# copy app source code
COPY . .

EXPOSE 5000

CMD ["npm", "start"]
