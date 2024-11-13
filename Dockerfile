# api-gateway/docker/Dockerfile
FROM kong:latest

# Copy base configuration
COPY ./default.kong.yaml /opt/kong/default.kong.yaml

# You can add default plugins, custom configurations, etc.
ENV KONG_DATABASE="off" \
    KONG_PROXY_ACCESS_LOG="/dev/stdout" \
    KONG_ADMIN_ACCESS_LOG="/dev/stdout" \
    KONG_PROXY_ERROR_LOG="/dev/stderr" \
    KONG_ADMIN_ERROR_LOG="/dev/stderr" \
    KONG_ADMIN_LISTEN="0.0.0.0:8001"

# Add any custom entrypoint scripts if needed