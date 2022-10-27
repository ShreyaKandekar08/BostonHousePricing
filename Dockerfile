FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip insall -r requirements.txt
EXPOSE $PORT
CMD gunicorn --worker=4 --bind 0.0.0.0:$PORT app:app