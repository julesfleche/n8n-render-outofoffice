FROM n8nio/n8n:latest

# Install the community node
RUN npm install n8n-nodes-whapi --prefix /data

# Tell n8n to load the node
ENV N8N_COMMUNITY_PACKAGES_INCLUDED="n8n-nodes-whapi"
