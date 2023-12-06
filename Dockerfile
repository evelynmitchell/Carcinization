# ==================================
# Use an official Python runtime as a parent image
FROM python:3.9-slim
RUN apt-get update && apt-get -y install libgl1-mesa-dev libglib2.0-0; apt-get clean
RUN pip install opencv-contrib-python-headless
RUN pip install pyenv

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /usr/src/carcin

# Install Python dependencies
# COPY requirements.txt and pyproject.toml if you're using poetry for dependency management
# RUN curl https://pyenv.run | bash ; export PATH="~/.pyenv/bin:$PATH" ; eval "$(pyenv init -)" ; eval "$(pyenv virtualenv-init -)"; source ~/.bashrc



# COPY requirements.txt .
# RUN pip install --upgrade pip
# RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .
