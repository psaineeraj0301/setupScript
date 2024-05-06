# DockerFile for node project. If you have only build folder then use this script
# Use NGINX as base image
FROM nginx:alpine

# Copy build files to NGINX web root
COPY build/ /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
