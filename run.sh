#!/bin/bash

set -m
nginx -g "daemon off;" &
for DOMAIN in $DOMAINS; do
    certbot install --non-interactive --redirect --nginx --cert-name "$DOMAIN"
done
certbot renew
fg %1
