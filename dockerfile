    //download alpine image, a Linux OS which contains node.js
    FROM node:alpine
    
    //using the below directory
    WORKDIR /usr/app
    
    //copying the package files
    COPY package*.json ./
    
    //installing the packages inside the docker
    RUN npm install
    
    //copying everything in this folder 
    COPY . .

    //the port
    EXPOSE 3000
    
    //command we are using it
    CMD ["nodemon", "index.js"]
