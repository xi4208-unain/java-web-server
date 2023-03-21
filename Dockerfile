FROM maven:3.8-openjdk-17 AS builder

RUN mkdir /home/app

COPY . /home/app/

WORKDIR /home/app/

RUN mvn clean package



FROM openjdk:17-slim

COPY --from=builder /home/app/target/rest-service-complete-0.0.1-SNAPSHOT.jar /usr/local/lib/rest-service-complete.jar

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "/usr/local/lib/rest-service-complete.jar" ]