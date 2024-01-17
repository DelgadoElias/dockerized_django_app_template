# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /ibm_first_django_project/
COPY firstproject/requirements.txt .
RUN pip install -r requirements.txt
COPY firstproject .
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
