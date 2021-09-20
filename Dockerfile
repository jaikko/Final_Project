# pull the official base image
FROM python:3.8.3-alpine

# set work directory
WORKDIR /final_project

RUN python3 -m venv /opt/venv

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# copy project
COPY . .


RUN /opt/venv/bin/pip 

# install dependencies
RUN pip install --upgrade pip 
RUN /opt/venv/bin/pip install -r requirements.txt




EXPOSE 8000

CMD ["/opt/venv/bin/activate", "python", "manage.py", "runserver", "0.0.0.0:8000"]
