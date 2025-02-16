# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the necessary Python packages
RUN pip install qrcode[pil]

# Run generate_qr.py when the container launches
CMD ["python", "generate_qr.py"]
