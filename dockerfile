# Use the official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR ./src/app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./
COPY . .
# Install the dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port your app runs on (e.g., 3000)
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]
~                                                                                                                                                                 
~                                                                                                                                                                 
~                                                                                                                                                                 
~          
