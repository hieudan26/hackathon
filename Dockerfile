FROM maven:3.8.6-amazoncorretto-19 as maven_build
WORKDIR /app
COPY ./src ./src
COPY pom.xml pom.xml
RUN mvn clean install -Dmaven.test.skip

########run stage########
FROM openjdk:19
WORKDIR /app
COPY --from=maven_build /app/target/*.jar hcmute-backend.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","hcmute-backend.jar"]