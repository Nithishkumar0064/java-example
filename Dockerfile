FROM ubuntu:latest
WORKDIR /home/ubuntu/
RUN apt update && apt install git -y
RUN git clone https://github.com/Nithishkumar0064/tomcat-installation-ubuntu.git
RUN apt install sudo apt-utils wget -y && bash tomcat-installation-ubuntu/install-tomcat-ubuntu.sh 
COPY *.war /opt/tomcat/apache-tomcat-9.0.68/webapps/
RUN bash /opt/tomcat/apache-tomcat-9.0.68/bin/startup.sh
CMD ["/bin/bash"]
