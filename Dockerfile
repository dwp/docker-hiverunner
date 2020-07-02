FROM maven:3.6.3-jdk-8-slim

COPY pom.xml /pom.xml
RUN mvn clean test install

ENTRYPOINT [ "mvn", "test" ]


