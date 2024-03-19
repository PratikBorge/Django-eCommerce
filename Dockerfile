FROM python:3.11
LABEL engg="prat"

RUN git clone https://github.com/PratikBorge/Django-eCommerce.git
RUN virtualenv env
RUN pip install -r requirements.txt
WORKDIR /ecommerce/
EXPOSE 8000

ENTRYPOINT ["sh", "-c", ". venv/bin/activate && python manage.py runserver 0.0.0.0:8000"]