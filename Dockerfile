# Use the official Node.js image.
FROM node:14

# Create and set the working directory.
WORKDIR /usr/src/app

# Copy package.json and install dependencies.
COPY package*.json ./
RUN npm install

# Copy the rest of the application files.
COPY . .

# Expose the port the app runs on.
EXPOSE 3000

# Run the application.
CMD ["node", "index.js"]

