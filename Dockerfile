FROM public.ecr.aws/corretto/corretto:17-alpine
WORKDIR /app
# Use wildcard to avoid version-specific name issues
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
