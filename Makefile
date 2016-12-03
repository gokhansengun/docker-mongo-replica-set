all:
	docker-compose up -d primary
	docker-compose up -d slave1
	docker-compose up -d slave2
	echo "Waiting for 5 seconds to let nodes to be up"
	sleep 5
	echo "Setting up replica now"
	./scripts/setup-replica.sh
	echo "Waiting for another 5 seconds to let replica form"
	sleep 5
	./scripts/query-replica.sh

clean:
	docker-compose down -v

setup-replica:
	./scripts/setup-replica.sh

query-replica:
	./scripts/query-replica.sh

load-dataset:
	./scripts/load-dataset.sh

ps:
	docker-compose ps