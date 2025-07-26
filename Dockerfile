FROM n8nio/n8n:latest

# Install git for runtime node installs (some nodes require it)
RUN apt-get update && apt-get install -y git

# Create startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Use custom start script
ENTRYPOINT ["/start.sh"]
