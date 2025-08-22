# Use official Python image
FROM python:3.12-slim

# Set working directory inside container
WORKDIR /app

# Copy code
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir flask

# Expose Flask port
EXPOSE 5000

# Run Flask app
CMD ["python", "app.py"]
