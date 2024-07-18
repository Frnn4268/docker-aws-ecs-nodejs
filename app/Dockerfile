# Pull the Node.js image
FROM node:18-alpine

# Create a Docker working directory
WORKDIR /app

# Copy package.json and package-lock.json dependencies files
COPY package*.json ./

# Install dependencies inside Docker
RUN npm install

# Copy the application source code
COPY . .

# Port number to expose the Node.js app outside of Docker
EXPOSE 5000

# Command to run the application
CMD ["node", "index.js"]
