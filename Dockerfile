#use an official python runtime as base image
FROM python:3.9-slim

#set the working directory in the container
WORKDIR /app

#copy the current directory contents into the container at /app
COPY . /app

#install dependencies
RUN pip install --no-cache-dir -r requirements.txt

#Expose port 5000 for the app
EXPOSE 5000

#command to run the app
CMD ["python","app.py"]