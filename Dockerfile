FROM maven:3.6.3-jdk-8-slim

COPY pom.xml /pom.xml
RUN mvn clean install

ENTRYPOINT [ "mvn", "test" ]


