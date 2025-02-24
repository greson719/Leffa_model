# Use an official Python 3.10 slim image as our base (this is our “lunch box”)
FROM python:3.10-slim

# Set the working directory inside the container to /app
WORKDIR /app

# Copy all files from our repository into the container
COPY . /app

# Upgrade pip and install the required packages from requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt

# Open port 7860 (the port our Gradio app will use)
EXPOSE 7860

# When the container runs, start the app (app.py)
CMD ["python", "app.py"]
