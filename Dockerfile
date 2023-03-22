FROM gcr.io/distroless/java17-debian11
WORKDIR /opt/
COPY target/*.jar .
CMD ["ci-cd-backend-0.0.1-SNAPSHOT.jar"]