# Use an official NGINX runtime as the base image
FROM my-app:latest

# Expose port 80 for HTTP traffic
EXPOSE 80

# Copy your custom configuration (if any) to the my-app configuration directory
# COPY my-app.conf /etc/my-app/my-app.conf

# Start NGINX when the container starts
CMD ["my-app", "-g", "daemon off;"]
