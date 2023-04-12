FROM openjdk:17
EXPOSE 8001
ADD target/github_cicd_jenkins_docker.jar github_cicd_jenkins_docker.jar
ENTRYPOINT ["java","-jar","/github_cicd_jenkins_docker.jar"]