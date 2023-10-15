# Use an official Maven image as a parent image
FROM maven:3.6.3-openjdk-17 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the Maven project files (pom.xml) to the container
COPY pom.xml .

# Copy the source code to the container
COPY src src/

# Build the application using Maven
RUN mvn clean package

# Use an official OpenJDK image as the base image for the final image
FROM openjdk:17-ea-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file generated in the previous stage to the container
COPY --from=build /app/target/*.jar app.jar

# Expose the port your Spring Boot application listens on (default is 8080)
EXPOSE 8080

# Command to run the Spring Boot application
CMD ["java", "-jar", "app.jar"]


## sudo docker run -p 8080:8080 -t docker-spring-boot:1.0
## sudo docker run -p 80:8080 -t docker-spring-boot:1.0
## sudo docker run -p 443:8443 -t docker-spring-boot:1.0
