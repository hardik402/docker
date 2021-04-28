FROM openjdk:8-jdk-alpine

EXPOSE 8002

WORKDIR /app

ADD target/*.jar /app/app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]

CMD SLEEP 20m