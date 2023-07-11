#Base image /it has to be in any dockerfile
#FROM openjdk:11
#will get jar file and copy to image
#COPY ./target/Spring-24-Docker-0.0.1-SNAPSHOT.jar  /usr/app/
#to  direct any folder
#WORKDIR /usr/app
#will provide exacutable application when container starts the run
#ENTRYPOINT ["java","-jar","Spring-24-Docker-0.0.1-SNAPSHOT.jar"]

#different type
#we want to run app from pomxml
# we got maven and JDK image
FROM amd64/maven:3.8.6-openjdk-11
WORKDIR usr/app
#take my all folders and put in current directory
COPY  .  .
#run from Maven
ENTRYPOINT ["mvn","spring-boot:run"]
