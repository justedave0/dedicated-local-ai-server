FROM caddy:latest

# Install the Cloudflare DNS plugin
RUN caddy add-package github.com/caddy-dns/cloudflare

# Copy local Caddyfile
COPY Caddyfile /etc/caddy/Caddyfile 