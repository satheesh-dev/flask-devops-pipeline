FROM python:3.10-slim

# Install curl (optional: for health checks)
RUN apt-get update && apt-get install -y curl && apt-get clean

WORKDIR /app

# Copy app code
COPY app.py .

# Install Flask
RUN pip install --no-cache-dir flask

# Expose port used in app.py
EXPOSE 8002

# Start Flask app
CMD ["python", "app.py"]
