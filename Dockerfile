FROM maven:3.6.3-jdk-8-slim


COPY pom.xml /home/app


ENTRYPOINT [ "mvn test" ]

