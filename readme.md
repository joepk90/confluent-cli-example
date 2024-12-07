# Apache Kafka for absolute beginners
This project has ben created to document customizing Confluent CLI docker-compose setup.

## Confluent CLI Documentation

Original docker-compose.yml file used as a base 
https://github.com/confluentinc/cp-all-in-one/blob/7.8.0-post/cp-all-in-one/docker-compose.yml

docker-compose.yml file with zookeeper (unused)
https://github.com/confluentinc/cp-all-in-one/blob/7.7.0-post/cp-all-in-one/docker-compose.yml

The server start commands aren't neccesary - by starting the service with docker-compose, these services have already been started (kafka-server, zookeeper etc.).

## Broker Dashboard
http://localhost:9021/

### TODO
- add command to login to the broker service starting in the app directory
- make it possible to run Make commands from the container (this would mean installing make?)