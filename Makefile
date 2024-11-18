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


### BROKER SERVICE COMMANDS

zookeeper-server-start:
	zookeeper-server-start /etc/kafka/zookeeper.properties

# note the use of the custom server.properties file
kafka-server-start:
	kafka-server-start /app/server.properties
