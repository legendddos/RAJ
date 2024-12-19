# Use a Python base image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Make the binary executable
RUN chmod +x ./LEGEND

# Ensure that Python 3 is used instead of Python 2
RUN ln -s /usr/bin/python3 /usr/bin/python

# Set environment variables (if necessary)
ENV TELEGRAM_TOKEN=<8073787222:AAGoYjRuggjcQ_LcrZ2ZI58yaDuDhHLhsas>

# Verify that the script exists in the container
RUN ls -al /app  # This will list the files in the /app directory for debugging

# Run the Python script using Python 3
CMD ["python", "LEGEND.py"]
