FROM ubuntu:16.04
RUN apt-get -y update 
RUN apt-get -y install openjdk-8-jdk  wget
RUN mkdir /usr/local/tomcat
RUN wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar -xvzf tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.41/* /usr/local/tomcat
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run



https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.16/bin/apache-tomcat-9.0.16.tar.gz
