FROM maven:3.6.3-jdk-8-slim

COPY pom.xml /pom.xml
RUN mvn install && rm -rf target

ENTRYPOINT [ "mvn", "test" ]


