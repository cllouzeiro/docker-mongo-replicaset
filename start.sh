chmod 400 keyfile
username=<USER_NAME> password=<PASSWORD> docker-compose up -d
sleep 50
docker-compose stop mongotmp remover
