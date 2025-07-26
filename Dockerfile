FROM n8nio/n8n:latest

# Switch to root to install git
USER root

# Install git
RUN apk add --no-cache git

# Switch back to default n8n user
USER node

# Copy startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
