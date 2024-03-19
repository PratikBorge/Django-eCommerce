FROM python:3.11-alpine
LABEL engg="prat"

COPY . .
RUN pip install virtualenv 
RUN virtualenv env
RUN pip install -r requirements.txt
WORKDIR /ecommerce/
RUN python manage.py runserver
EXPOSE 8000

