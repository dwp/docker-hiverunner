FROM maven:3.6.3-jdk-8-slim

COPY pom.xml /pom.xml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
COPY data/test_data.tsv /usr/src/dataworks-pdm/data/
RUN mvn install && rm -rf target

ENTRYPOINT [ "./entrypoint.sh"]
