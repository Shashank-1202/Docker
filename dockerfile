# Base image
FROM node:18

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package files first (for layer caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the application files
COPY . .

# Expose port
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
