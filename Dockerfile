# Base image
FROM python:3-slim
# Project working directory
WORKDIR /app
# Copy the python requirements module file to working dir
COPY requirements.txt .
# Install all project dependencies
RUN pip install --no-cache-dir -r requirements.txt
# Copy all files to working dir
COPY . .
# Expose prot 8000 for external access
EXPOSE 8000
# Service front-end process
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]