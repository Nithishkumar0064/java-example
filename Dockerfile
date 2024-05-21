FROM nithish
WORKDIR /usr/local/tomcat/webapps/
COPY target/*.war 
