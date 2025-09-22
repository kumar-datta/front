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


