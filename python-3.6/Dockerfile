FROM python:3.6-slim

# flake8
RUN pip install "flake8" "flake8-print"
COPY flake8.cfg /usr/local/bin/flake8.cfg

# entrypoint
COPY entrypoint.sh /bin/entrypoint.sh
ENTRYPOINT [ "/bin/entrypoint.sh" ]
