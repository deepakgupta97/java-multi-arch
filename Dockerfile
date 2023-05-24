# Use a multi-arch base image, such as 'adoptopenjdk'
FROM adoptopenjdk:11-jdk-hotspot

# Copy the application source code and pom.xml
COPY . /app

# Set the working directory
WORKDIR /app

# Set the entry point command
CMD ["java", "-cp", "target/my-java-app-1.0.0.jar", "HelloWorld"]
