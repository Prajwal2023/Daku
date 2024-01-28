
# Use the official Nginx image as the base image
FROM nginx:latest

# Copy the custom index.html file from the current directory to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html
# Expose port 80 to allow external access
EXPOSE 80
