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