#officially node js as a parent image
FROM node:12.2.0-alpine

#set the working directory to ./app
WORKDIR /app
#install app dependency
COPY package.json ./
#install any needed packages
RUN npm install
#audit fix npm packages
RUN npm audit install
#Bundle aap source
copy . /app
#make port 3000 available outside thus container
EXPOSE 3000
#run app.js when the container launches
CMD ["node","start"]
