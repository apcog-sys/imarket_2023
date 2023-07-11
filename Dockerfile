# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .
RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
# Install the dependencies
RUN pip3 install -r requirements.txt

# Copy the application code to the container
COPY . /app

# Expose the port on which the Flask server will run
EXPOSE 5000

# Set the entry point command
CMD ["python", "app.py"]
