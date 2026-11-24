FROM eclipse-temurin:21-jdk-noble
WORKDIR /app
COPY target/*.jar app.jar
EXPOSE 8080 5005
ENTRYPOINT ["java", "-jar","app.jar"]
#ENTRYPOINT ["java", "-jar","app.jar", "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*"]