FROM python:3

ENV PYTHONUNBUFFERED 1

RUN mkdir /backend
WORKDIR /backend
RUN pwd
COPY requirements.txt /backend
RUN pip install -r requirements.txt
