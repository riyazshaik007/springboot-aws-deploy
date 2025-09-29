# Stage 1: Build the JAR (optional if you want multi-stage build)
# If you build JAR in CodeBuild, you can skip this stage

# Stage 2: Build the runtime image
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app

# Copy the JAR built by Maven into the container
# Replace the filename with your actual JAR in target/
COPY target/springboot-aws-deploy-0.0.1-SNAPSHOT.jar app.jar

# Expose port (adjust if your app uses a different port)
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
