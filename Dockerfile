# Base image
FROM python:3.10

# Python settings
ENV PYTHONUNBUFFERED=1

# Set the working directory
WORKDIR /app

# Copy all files
COPY . .

# Install dependencies
RUN pip install -r ./requirements.txt

# Run the django app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]