FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /usr/src/app

COPY requirements.txt ./requirements.txt

RUN pip3 install -r requirements.txt

COPY init.sh /usr/src/app/init.sh

RUN chmod +x /usr/src/app/init.sh

CMD [ "tail", "-f", "/dev/null" ]
