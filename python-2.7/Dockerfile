FROM python:2.7-slim

RUN pip install "flake8" "flake8-print"

COPY flake8.cfg /usr/local/bin/flake8.cfg

ENTRYPOINT ["flake8", "--config=/usr/local/bin/flake8.cfg"]
