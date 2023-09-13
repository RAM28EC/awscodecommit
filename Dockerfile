#Base image
FROM python:3.10.13-alpine3.17
#set the working directory
WORKDIR /app
#copy requirements.txt fle
COPY requirements.txt .
#install the project dependencies
RUN pip install -r requirements.txt
#copy application code into conatiner
COPY . .
#export the port
EXPOSE 8085
#Run the application
CMD [ "python", "app.py" ]