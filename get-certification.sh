#!/bin/sh

#docker-compose -f compose-production.yaml run --rm certbot renew
#docker-compose -f compose-production.yaml run --rm certbot certonly --webroot --webroot-path /var/www/certbot/ --email congnv69@gmail.com --agree-tos --no-eff-email -d hccomputer.net -d www.hccomputer.net

# docker-compose -f compose-production.yaml run --rm certbot register \
#     --email "congnv69@gmail.com" \
#     --no-eff-email \
#     --server "https://dv.acme-v02.api.pki.goog/directory" \
#     --eab-kid "cac98befe3201d5971bee88c93f7dc9b" \
#     --eab-hmac-key "pjZ2vNpP3B17fdL1dD9ba53xj4YIVD4EqwMHs4vGtkCvzhlcq2QCyH__5QGero2mGrPTWV18s3x2YOKgImTMcQ"

docker-compose -f compose-production.yaml run --rm certbot certonly \
    --manual \
    --preferred-challenges "dns-01" \
    --server "https://dv.acme-v02.api.pki.goog/directory" \
    --domains "hccomputer.net" \
    --eab-kid "cac98befe3201d59e83990402241760d" \
    --eab-hmac-key "bO5kRjfva3HaQOY-qT9xo_AjfvZksWJJSJpmC6aQ-y9JGX_rzRIfktOPGdOEUNG_cIrkFOoHtMQTIIO3eAzbMQ"
