# Using node.js inside a docker container
A simple sample on how use node.js through docker containers

First of all, you need to install docker, and if you are using Windows, make sure CPU Virtualization (BIOS) and Hyper-V are both enabled.

The dockerfile has the information about the image we are downloading from dockerhub, in this case "alpine" image (It's a soft linux image containing node.js). There's also information on which port we want to work with, and which command it should run.

1. **npm install express** - because we are using in this sample to show hello world from localhost:3000

2. **docker build -t "containername" .** - builds the container by executing commands written on dockerfile

3. **docker run -p 3000:3000 -d "containername"** - now we are telling that everything listening on port 3000 in this image should reflect on our port 3000 (Outside port). in "containername" we pass the container we just created it

4. **Access localhost:3000** in your machine and you should see a Hello World message
