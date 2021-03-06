FROM python:3.7

RUN mkdir /app
WORKDIR /app
RUN pip install Flask
RUN pip install flask_sqlalchemy
RUN pip install mysqlclient
COPY . /app

ENV FLASK_APP=index.py
EXPOSE 5000
CMD ["flask","run","--host=0.0.0.0"]
