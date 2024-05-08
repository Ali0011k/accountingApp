FROM python:3.11.1

EXPOSE 8000

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV DJANGO_SUPERUSER_PASSWORD=$DJANGO_SUPERUSER_PASSWORD

COPY . /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
