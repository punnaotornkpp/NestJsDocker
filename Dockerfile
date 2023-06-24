# Use the official Node.js image as the base
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install --production

# Copy the rest of the application files to the container
COPY . .

# Expose the port on which your NestJS application runs (change if necessary)
EXPOSE 3000

# Start the NestJS application
CMD [ "npm", "run", "start:prod" ]
