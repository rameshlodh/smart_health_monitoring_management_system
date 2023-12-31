FROM python:latest
WORKDIR /application
COPY . /application
RUN pip install -r requirments.txt
RUN python manage.py makemigrations
RUN python manage.py migrate
COPY . .
EXPOSE 9001
CMD ["python3","manage.py","runserver","0.0.0.0:9001"]
