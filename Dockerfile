# Use a lightweight Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy everything from repo into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir pytest

# Default command when container starts
CMD ["python", "hello.py"]
