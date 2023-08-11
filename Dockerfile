FROM node:14.16.1

WORKDIR /emedhaa

RUN npm install @angular/cli@12.2.3 -g

COPY package.json .

RUN npm install

RUN npm install jquery@3.6.0 --save

RUN npm install datatables.net@1.10.25 --save

RUN npm install datatables.net-dt@1.10.24 --save

RUN npm install angular-datatables@12.0.0 --save

RUN npm install @types/jquery@3.5.6 --save-dev

RUN npm install @types/datatables.net@1.10.20 --save-dev

COPY . .

EXPOSE 9000

RUN ng build

CMD ["node", "app.js"]


#docker network create network_name  ------> create network to communicate

# Run MongoDB container
# docker run -d --network=network_name  --name container_name mongo

#docker run -d --network=network_name  -p 9000:9000 --name container_name image_name


