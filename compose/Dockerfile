FROM python:3.5
ENV PYTHONUNBUFFERED 1

RUN mkdir /macdash

COPY ./compose/start-dev.sh /macdash/start-dev.sh
RUN chmod +x /macdash/start-dev.sh

COPY ./compose/start-prod.sh /macdash/start-prod.sh
RUN chmod +x /macdash/start-prod.sh

COPY requirements /macdash/requirements/
RUN pip install -r /macdash/requirements/local.txt

COPY . /macdash/

WORKDIR /macdash
