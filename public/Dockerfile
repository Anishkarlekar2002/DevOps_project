# # Use an official Nginx image
# FROM nginx:alpine

# # Copy static files into nginx html directory
# COPY . /usr/share/nginx/html

# # Expose port 80
# EXPOSE 80
# Use Node.js base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source
COPY . .

# Start app
CMD ["npm", "start"]
