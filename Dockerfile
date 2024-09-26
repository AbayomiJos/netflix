# Use an official Node.js runtime as the base image
FROM node:12

# Set the working directory
WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y git

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
