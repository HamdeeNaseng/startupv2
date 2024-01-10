# Use the base Debezium Connect image
FROM quay.io/debezium/connect:latest

# Set the working directory
WORKDIR /kafka/libs

# Deploy PostgreSQL JDBC Driver
RUN curl -sO https://jdbc.postgresql.org/download/postgresql-42.1.4.jar

# Add the JdbcSinkConnector plugin JAR file to the image
ADD https://packages.confluent.io/maven/io/confluent/kafka-connect-jdbc/5.1.2/kafka-connect-jdbc-5.1.2.jar /kafka/libs/kafka-connect-jdbc-5.1.2.jar

# Add the AvroConverter JAR file to the image
ADD https://packages.confluent.io/maven/io/confluent/kafka-connect-avro-converter/5.1.2/kafka-connect-avro-converter-5.1.2.jar /kafka/libs/kafka-connect-avro-converter-5.1.2.jar

# Set the environment variable for the plugin path
ENV CONNECT_PLUGIN_PATH="/kafka/connect,/usr/share/java,/kafka/libs"
