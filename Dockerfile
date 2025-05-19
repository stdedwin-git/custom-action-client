# Use the official OpenJDK image as a base
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the executable jar file from the host to the container
COPY target/*.jar /app/app.jar

# Expose the port the application runs on
EXPOSE 8080

# Run the jar file
#CMD ["java", "-jar", "app.jar"]
ENTRYPOINT ["java", "org.springframework.boot.loader.launch.JarLauncher"]