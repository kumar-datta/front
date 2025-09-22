FROM omcat:9.0
COPY ./target/maven_web-app.war /usr/local/tomcat/webapps/ROOT.war
CMD["catalina.sh","run"]


open terminal
-------------
docker build -t mavenapp .
docker images
docker login 
docker tag mavenapp bhavagna/
docker tag mavenapp bhavagna2005/mavenapp
docker push bhavagna2005/mavenapp



#docker build -t username/imagename .




last question
=-----------
create docker_compose.yml

paste this:
----------


version: "3.9"

services:
  web:
    image: bhavagna2005/
    ports:
      - "8000:8080"
    depends_on:
      - mysql

  mysql:
    image: mysql:8.0
    environment:
      MYSQL_ROOT_PASSWORD: root
      MYSQL_DATABASE: university
      MYSQL_USER: user
      MYSQL_PASSWORD: password
    ports:
      - "3306:3306"


