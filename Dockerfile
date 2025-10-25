# Stage 1: Use a lightweight Nginx web server
FROM nginx:1.25-alpine-slim

# Remove the default Nginx welcome page and any default configs
RUN rm /usr/share/nginx/html/index.html
RUN rm /etc/nginx/conf.d/default.conf

# Copy all your website files (HTML, CSS, JS, images) 
# into the Nginx public directory
COPY . /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80

# The default Nginx command will start the server
# This command keeps the container running in the foreground
CMD ["nginx", "-g", "daemon off;"]