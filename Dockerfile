FROM nithish
RUN ls -al /
COPY ./works-with-heroku-1.0.war /usr/local/tomcat/webapps/
