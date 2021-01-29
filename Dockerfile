# The image is defined in this file

FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip3 install -r requirements.txt

ENTRYPOINT [ "gunicorn", "-b", ":8080", "main:APP" ]