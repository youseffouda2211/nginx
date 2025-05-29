# Use the official Nginx base image
FROM nginx:alpine

# Copy your custom index.html into the default Nginx public directory
COPY index.html /usr/share/nginx/html/index.html

# (Optional) Copy a custom Nginx config if needed
# COPY default.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start NGINX (already handled by the base image)
CMD ["nginx", "-g", "daemon off;"]
