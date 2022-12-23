FROM eclipse-temurin:11

# syntax=docker/dockerfile:1


WORKDIR /eCart

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
COPY mvnw configuration-client/pom.xml ./
COPY mvnw configuration-service/pom.xml ./

RUN ./mvnw dependency:resolve

COPY configuration-client/src ./configuration-client/src
COPY configuration-service/src ./configuration-service/src

CMD ["./mvnw", "spring-boot:run"]




EXPOSE 8888
EXPOSE 8081


