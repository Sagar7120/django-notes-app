FROM python:3.9
#base image and the operating system will be python3
WORKDIR /app/backend
#On this /app/backend directory our app will run inside the container.
COPY requirements.txt /app/backend
RUN pip install -r requirements.txt
#Copy the requirements.txt file which contains all the requirements/libraries which are neccessary to run the code. Then will the requirement file.
COPY . /app/backend
#This will copy all the code in the mentioned directory i.e /app/backend
EXPOSE 8000
#All changes will be expose on port 8000
CMD python /app/backend/manage.py runserver 0.0.0.0:8000
#This will run the app on port 8000
