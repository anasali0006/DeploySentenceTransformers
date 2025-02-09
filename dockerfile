# Use a lightweight Python image
FROM python:3.12.8

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the application port
EXPOSE 5001

# Run the Flask app
CMD ["python", "running_onnx_flask.py"]
