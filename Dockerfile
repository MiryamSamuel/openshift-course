FROM node:18

# Create app directory
WORKDIR /app

# Copy package.json from src
COPY src/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY src .

# Expose port
EXPOSE 8080

# Run the app
CMD ["node", "index.js"]