#!/bin/bash

# Install community node at runtime if not already installed
if [ ! -d "/data/node_modules/n8n-nodes-whapi" ]; then
  echo "Installing n8n-nodes-whapi..."
  npm install n8n-nodes-whapi --prefix /data
else
  echo "n8n-nodes-whapi already installed."
fi

# Start n8n
n8n
