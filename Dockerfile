FROM tomcat:latest
ADD ./target/war-test.war /usr/local/tomcat/webapps/
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]
EXPOSE 8080
