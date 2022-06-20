FROM openjdk:17
EXPOSE 8080
ADD target/devops-automation-1.war devops-automation-1.war
ENTRYPOINT [ "java","-war","/devops-automation-1.war" ]