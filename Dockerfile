# Use the official Node.js image from the Docker Hub as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the app's source code into the container
COPY . .

# Expose port 3000 to allow communication with the container
EXPOSE 3000

# Command to run the application when the container starts
CMD ["node", "index.js"]
