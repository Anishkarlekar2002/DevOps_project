# Use an official Nginx image
FROM nginx:alpine

# Copy static files into nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
