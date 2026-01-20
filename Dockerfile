# Use Node.js base image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Expose port (אם האפליקציה שלך מאזינה על פורט מסוים)
EXPOSE 3000

# Command to run the app
CMD ["node", "index.js"]
