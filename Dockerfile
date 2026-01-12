FROM python:3.12-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project
COPY . .

# Expose port
EXPOSE 8000

# Run with Daphne
CMD ["daphne", "-b", "0.0.0.0", "-p", "8000", "myproject.asgi:application"]
