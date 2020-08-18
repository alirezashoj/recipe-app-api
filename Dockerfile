FROM python:3.7:alpine
MAINTAINER YouMate Co

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pipi install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app/app

RUN adduser -D user
USER user
