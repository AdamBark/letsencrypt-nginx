#!/bin/bash

set -m
nginx -g "daemon off;" &
certbot renew
fg %1
