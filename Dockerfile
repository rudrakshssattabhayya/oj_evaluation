# Use the official Python base image with Django installed
FROM python:3.9

# Set environment variables
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file to the working directory
COPY requirements.txt .

# Install the required packages for Django
RUN pip install --no-cache-dir -r requirements.txt

# Install the required packages for executing the CPP file
RUN apt-get update && apt-get install -y g++

# Copy the Django project files to the working directory
COPY . .

# Copy the entrypoint script to the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set the entrypoint to run the script
ENTRYPOINT ["/entrypoint.sh"]
