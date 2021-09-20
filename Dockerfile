# pull the official base image
FROM python:3.8.3-alpine

# set work directory
WORKDIR /final_project

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# copy project
COPY . .


RUN ./venv/bin/activate

# install dependencies
RUN pip install --upgrade pip 
RUN pip install -r requirements.txt




EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
