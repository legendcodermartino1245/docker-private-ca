docker build -t container_1-test ./container1
docker build -t server1-test ./server_1
docker compose up -d
docker exec server1 service ssh restart
#docker exec server1 chmod 600 /root/.ssh/id_rsa_shared.pub