# Use an official Python runtime as the base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy your application code to the container
COPY . /app

# Install any necessary dependencies
RUN pip install -r requirements.txt

# Expose port 5000 for HTTP traffic
EXPOSE 5000

# Start your application on http://127.0.0.1:5000
CMD ["python", "app.py"]
