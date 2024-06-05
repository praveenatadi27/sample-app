FROM eclipse-temurin:21
RUN mkdir /opt/app
COPY /home/runner/.m2/repository/com/example/demo/0.0.1-SNAPSHOT/demo-0.0.1-SNAPSHOT.jar /opt/app
CMD ["java", "-jar", "/opt/app/demo-0.0.1-SNAPSHOT.jar"]
