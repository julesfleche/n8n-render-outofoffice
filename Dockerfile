FROM n8nio/n8n:latest

# Install git for runtime node installs (some nodes require it)
RUN apk add --no-cache git

# Create startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Use custom start script
ENTRYPOINT ["/start.sh"]
