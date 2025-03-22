#!/bin/bash

# Start Caddy
docker compose up -d

# Install Cloudflare DNS plugin
docker exec -it caddy caddy add-package github.com/caddy-dns/cloudflare

# Restart Caddy to apply changes
docker compose restart 