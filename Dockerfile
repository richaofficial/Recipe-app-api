FROM python:3.7-alpine
MAINTAINER Richa Tailang

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt 
RUN pip instal -r /requirements.txt

RUN mkdir/app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
