FROM openjdk:11-jdk
MAINTAINER Deepak Nishad
WORKDIR /app
COPY target/ci-cd-backend-0.0.1-SNAPSHOT.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]