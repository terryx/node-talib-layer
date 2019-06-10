start:
	docker-compose up --build -d
	docker cp oandabot-layer:/home/node/nodejs.zip build