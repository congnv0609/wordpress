#!/bin/sh

#docker-compose -f compose-production.yaml run --rm certbot renew
#docker-compose -f compose-production.yaml run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ --email congnv69@gmail.com --agree-tos --no-eff-email -d hccomputer.net -d www.hccomputer.net

docker-compose -f compose-production.yaml run --rm certbot register \
    --email "congnv69@gmail.com" \
    --no-eff-email \
    --server "https://dv.acme-v02.api.pki.goog/directory" \
    --eab-kid "cac98befe3201d595b82a89e03491785" \
    --eab-hmac-key "ZxwxQp2YcE12yBfEHmvPiPEJvO5e8gSfLcZJp_J_fPZd-5q5OkH0KSKcwlzNZOLrCprwnRjO1xjiupVQhBuQDw"

docker-compose -f compose-production.yaml run --rm certbot certonly \
    --manual \
    --preferred-challenges "dns-01" \
    --server "https://dv.acme-v02.api.pki.goog/directory" \
    --domains "hccomputer.net"
