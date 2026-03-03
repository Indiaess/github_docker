# Pyhton image for Docker Hub
FROM python:3.9-slim

# Setting working directory
WORKDIR /app

# Copy current directory contents into the container app directory
COPY . /app

# Install packages
RUN pip install flask

# Make port 5000 available
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]
