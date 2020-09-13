FROM python:3.7-slim

ENV PYTHONUNBUFFERED 1

RUN mkdir /backend
WORKDIR /backend

COPY requirements.txt /backend
RUN pip install -r requirements.txt
