#!/bin/sh

#docker-compose -f compose-production.yaml run --rm certbot renew
docker-compose -f compose-production.yaml run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ --email congnv69@gmail.com --agree-tos --no-eff-email -d hccomputer.net -d www.hccomputer.net
