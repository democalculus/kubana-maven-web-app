FROM tomcat:8.0.20-jre8
#Update username and pwd login via tomcat UI
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
#RUN sed -i '/<\/tomcat-users>/ i\<user username="admin" password="eagunu" roles="admin-gui,manager-gui"/>' /usr/local/tomcat/conf/tomcat-users.xml
#Copy war file to webapps location
COPY target/mss-us-east-2-web-prod*.war /usr/local/tomcat/webapps/mss-us-east-2-web-prod.war
