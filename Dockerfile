FROM openjdk:1.8
EXPOSE 8080
ADD target/devops-automation-1.war devops-automation-1.war
ENTRYPOINT [ "java","-war","/devops-automation-1.war" ]