# Use the official OpenResty Docker image as the base image
FROM openresty/openresty:alpine

# Set the working directory in the container
WORKDIR /usr/local/openresty/nginx/

# Copy the configuration files and directories to the container
COPY ./scripts/ /usr/local/openresty/nginx/scripts/
COPY ./conf/ /usr/local/openresty/nginx/conf/

# Expose port 80
EXPOSE 80

# Start Nginx when the container launches
CMD ["/usr/local/openresty/nginx/sbin/nginx", "-g", "daemon off;"]
