FROM maven:3.6.3-jdk-8-slim
ENTRYPOINT [ "mvn test" ]
