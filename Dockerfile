FROM ubuntu:22.04
LABEL engg="prat"
RUN apt install python3 -y
RUN apt install git -y
RUN git clone https://github.com/imanaspaul/Django-eCommerce-tutorial-manascode.git
RUN pip install virtualenv 
RUN virtualenv env
RUN pip install -r requirements.txt
WORKDIR /ecommerce/

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
