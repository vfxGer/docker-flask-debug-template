FROM python:3-slim
RUN pip install pipenv
WORKDIR /usr/src/app
COPY Pipfile ./
COPY Pipfile.lock ./
RUN pipenv install --system --deploy
VOLUME /usr/src/app
ENV FLASK_APP=/usr/src/app/app.py
CMD flask run --port 5000 --host 0.0.0.0
