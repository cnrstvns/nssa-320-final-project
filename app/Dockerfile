# Use the official Node.js 20 image as the base image
FROM node:20

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the source code to the working directory
COPY . .

# Build the TypeScript application
RUN npm run build

# Expose the port that your Express application listens on
EXPOSE 3000

# Specify the command to run your application
CMD ["npm", "start"]