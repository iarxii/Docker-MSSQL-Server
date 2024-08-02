# Use the official image as a parent image
FROM mcr.microsoft.com/mssql/server:2019-latest

# Set the working directory
WORKDIR /usr/src/app

# Run the command inside your container filesystem
RUN mkdir -p /usr/src/app

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . /usr/src/app
