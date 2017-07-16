FROM python:2.7-slim

RUN mkdir -p /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD base-requirements.txt /app

RUN apt-get update && apt-get install -y gcc gettext libmysqlclient-dev && \
    pip install -r base-requirements.txt
