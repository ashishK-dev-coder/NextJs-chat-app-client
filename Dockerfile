# Use an official Node.js runtime as a base image
FROM node:18.19

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Next.js app
RUN npm run build

# Expose the port that your Next.js app will run on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
