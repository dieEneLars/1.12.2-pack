FROM centos:latest

# Do some basic tasks
## Set the user to root
USER root

## Set the yum mirrorlist
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-Linux-*
RUN yum update -y

# Install Java and confirm it is running
RUN yum install java -y
#RUN java --version

# Import data folder
COPY ./data /data
RUN chown root /data
RUN chmod -R 777 /data
RUN echo eula=true > /data/eula.txt
EXPOSE 25565/tcp

# Finally run the server
WORKDIR /data
ENTRYPOINT ./LaunchServer.sh
