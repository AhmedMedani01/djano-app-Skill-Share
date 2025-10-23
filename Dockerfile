# syntax=docker/dockerfile:1

FROM python:3

ENV PYTHONDONTWRITEBYTECODE = 1

ENV PYTONUNBUFFERED = 1

WORKDIR /code 

COPY requirements.txt /code

RUN pip install -r requirements.txt

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


