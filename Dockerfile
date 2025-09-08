# Use official Node.js LTS image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy source code
COPY . .

# Install express (since no package.json exists)
RUN npm install express

# Expose the service port (defaults to 3000, configurable via env var)
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
