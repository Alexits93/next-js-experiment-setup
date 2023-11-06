# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies in the container
RUN npm ci

# Copy the rest of the application to the container
COPY . .

# Define the environment variable for Next.js
ENV NODE_ENV production

# Build the app
RUN npm run build

# Specify the command to run when the container starts
CMD ["npm", "start"]
