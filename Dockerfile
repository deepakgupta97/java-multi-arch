# Use a multi-arch base image, such as 'adoptopenjdk'
FROM adoptopenjdk:11-jdk-hotspot

# Copy the application source code and pom.xml
COPY . /app

# Set the working directory
WORKDIR /app

# Build the Java application using Maven
RUN mvn package

# Set the entry point command
CMD ["java", "-cp", "target/my-java-app.jar", "HelloWorld"]
