FROM python:latest
WORKDIR /application
COPY . /application
RUN pip install -r requirments.txt
COPY . .
EXPOSE 9001
CMD ["python3","manage.py","runserver","0.0.0.0:9001"]
