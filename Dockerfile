FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

VOLUME /usr/src/app

ENV FLASK_APP=/usr/src/app/app.py

CMD flask run --port 5000 --host 0.0.0.0