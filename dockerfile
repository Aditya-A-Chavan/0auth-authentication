FROM python:3.11.5 AS builder
EXPOSE 8000
WORKDIR /app

# Copy and install Python dependencies
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy the Django project files
COPY . /app/

# Set the entry point for Django development server
ENTRYPOINT ["python", "manage.py"]

# Default command to run the development server
CMD ["runserver", "0.0.0.0:8000"]