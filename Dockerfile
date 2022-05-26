FROM python:3.7
WORKDIR /code
COPY . /code
RUN pip install pgsync
RUN bootstrap --config /code/schema.json
RUN pgsync --config /code/schema.json --daemon