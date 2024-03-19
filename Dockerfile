FROM python:3.11-alpine
LABEL engg="prat"

COPY . .
RUN pip install virtualenv 
RUN virtualenv env
RUN pip install -r requirements.txt
WORKDIR /ecommerce/

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
