FROM openjdk:8
EXPOSE 8080
ADD target/ci-cd-backend-0.0.1-SNAPSHOT.jar springboot-k8s-demo.jar
ENTRYPOINT ["java","-jar","/springboot-k8s-demo.jar"]