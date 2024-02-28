docker build -t wordpress-test./wordpress
docker build -t alphine-test ./ private_ca
docker build -t alphine-test-2 ./intermediate_ca
docker compose up -d
docker exec wordpress sh -c "sudo -u user -i wp core install --url=localhost --title=WP-CLI --admin_user=wpcli --admin_password=wpcli --admin_email=test@example.com --path=/var/www/html"