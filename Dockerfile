# Use an official Maven image to build the project
FROM maven:3.8.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean install

# Use a lighter base image for running the application
FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /app/target/demo-0.0.1-SNAPSHOT.jar /app/demo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/opt/app/demo-0.0.1-SNAPSHOT.jar"]
