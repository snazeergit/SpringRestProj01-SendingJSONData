FROM openjdk:17
EXPOSE 8080
ADD target/DevOps-Automation-1.jar DevOps-Automation-1.jar
ENTRYPOINT [ "java","-jar","/DevOps-Automation-1.jar" ]