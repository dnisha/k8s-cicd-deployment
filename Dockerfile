FROM openjdk:17-jdk-alpine
MAINTAINER Deepak Nishad
WORKDIR /app
COPY target/ci-cd-backend-0.0.1-SNAPSHOT.jar /app/app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]