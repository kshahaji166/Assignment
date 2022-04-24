#!/bin/bash
#jenkins_.war_setup

yum update -y

yum install java-1.8.0-openjdk-devel -y

mkdir -p /data/server 

cd /data/server

wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.62/bin/apache-tomcat-9.0.62.zip

unzip apache-tomcat-9.0.62.zip

rm -rf apache-tomcat-9.0.62.zip

cd /data/server/apache-tomcat-9.0.62/webapps

wget https://get.jenkins.io/war-stable/2.332.2/jenkins.war

chmod -R 700 /data/server/apache-tomcat-9.0.62/bin

cd /data/server/apache-tomcat-9.0.62/bin

bash startup.sh
