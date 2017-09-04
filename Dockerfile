FROM ubuntu:16.04
RUN apt-get update -y
RUN apt-get install -y python libpq-dev python-dev
RUN apt-get update
RUN apt-get install -y wget
RUN wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py
ADD . /src
WORKDIR /src
RUN apt-get update -y
RUN apt-get install libffi-dev build-essential -y
RUN pip install -r requirements.txt
CMD ["python", "server.py"]