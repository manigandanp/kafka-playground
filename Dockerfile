FROM ubuntu

RUN apt-get update && apt-get install -y \
  openjdk-8-jre \
  wget

RUN wget https://dlcdn.apache.org/kafka/3.0.0/kafka_2.12-3.0.0.tgz

RUN tar -xvzf kafka_*.tgz

RUN rm -f kafka_*.tgz && mv kafka_*/ kafka/

ENV PATH=/kafka/bin:$PATH
