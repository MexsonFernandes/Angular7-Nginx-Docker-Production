# `Angular 7 Nginx Docker for Production (SSL also included)`

<a href='https://ko-fi.com/Y8Y31LBT4' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://cdn.ko-fi.com/cdn/kofi3.png?v=2' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>

## Initial setup
  * Compile your Angular project for production use
    * "<b>ng build --prod</b>"
    * copy the 'Dockerfile', 'nginx.conf', files from this repository to 'dist' folder in your project.
    
## Docker setup using Dockerfile
  * run "<b>docker build -t angular-docker .</b>"
  * check docker image using "<b>docker image ls</b>"
  * start docker using "<b>docker run -p 3000:80 --rm angular-docker</b>"
  * open browser tab and run "<b>http://localhost:3000/</b>"
  
## Docker setup uing docker-compose.yml
  * run "<b>docker-compose up --build</b>" to build docker image and start the server.
  * run "<b>docker build -t angular-docker .</b>" if the above command gives error.
  * run "<b>docker-compose up</b>" to start existing docker image.
  * run "<b>docker-compose down</b>" to stop docker process.
  * Optional "<b>docker-compose down --rmi all</b>" to remove everything.
  
#### NOTE:
  * You can use either of the method specified above. The simplest one is by using docker-compose.yml file.
  * To start the server on port 80, make sure that there is no service currently open, which is using port 80. In the case of nginx running already on port 80, use "<b>sudo service nginx stop</b>" command. Then use "<b>docker run -p 80:80 --rm angular-docker</b>"
  * For ssl comment out lines from nginx.conf file and alos include the required ssl files like .crt(ssl certificate) and .key(private key). 
  
    
