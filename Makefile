colima-start:
	colima start --cpu 4 --memory 6

# note: if docker-compose hangs for ages, run colima stop -f
colima-stop:
	colima stop

start:
	docker-compose up -d

stop:
	docker-compose down


# restart services
service-restart-broker:
	docker-compose restart broker

# connect to services
ssh-service-broker:
	docker exec -it broker /bin/bash



### COMMANDS WONT WORK USING MAKE - SIMPLY HERE FOR DOCUMENTATION

### BROKER SERVICE COMMANDS ###
# the commented out commands aren't neccesary - by starting the service with docker-compose, these commands have already been run.

# zookeeper-server-start:
# zookeeper-server-start /etc/kafka/zookeeper.properties

# note the use of the custom server.properties file
# kafka-server-start:
# 	kafka-server-start /app/server.properties

kafka-topics-create:
	kafka-topics --create --topic test --partitions 1 --replication-factor 1 --bootstrap-server localhost:9092