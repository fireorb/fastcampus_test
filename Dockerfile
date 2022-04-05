FROM python:3.6.7

ENV PYTHONUNBUFFERED 1

RUN apt-get update -y
RUN apt-get install vim -y

RUN mkdir /srv/docker-django
ADD . /srv/docker-django

WORKDIR /srv/docker-django

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
