FROM omcat:9.0
COPY ./target/maven_web-app.war /usr/local/tomcat/webapps/ROOT.war
CMD["catalina.sh","run"]
