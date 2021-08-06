FROM 495526829652.dkr.ecr.ap-southeast-2.amazonaws.com/gai-hackathon/node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
