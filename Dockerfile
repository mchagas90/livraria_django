FROM python:3.7.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app

# RUN pip install pipenv
# COPY Pipfile* /tmp/
# RUN cd /tmp && pipenv lock --requirements > requirements.txt
# RUN pip install -r /tmp/requirements.txt

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY . /app/

COPY first_run.sh /app/
RUN chmod +x /app/first_run.sh
