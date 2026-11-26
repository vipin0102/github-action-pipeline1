# Base Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy Python application
COPY app.py .

EXPOSE 8080

# Run Python application
CMD ["python", "app.py"]