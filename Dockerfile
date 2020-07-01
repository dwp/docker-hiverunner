FROM maven:3.6.3-jdk-8-slim


COPY pom.xml /home/app/
RUN mvn -f /home/app/pom.xml clean package


ENTRYPOINT [ "mvn test" ]

