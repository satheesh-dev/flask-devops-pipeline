FROM python:3.10-slim

# Install curl (necessary for healthcheck)
RUN apt-get update && apt-get install -y curl && apt-get clean

WORKDIR /app
COPY app.py .
COPY pyproject.toml .

RUN pip install --no-cache-dir flask

EXPOSE 8002
CMD ["python", "app.py"]
