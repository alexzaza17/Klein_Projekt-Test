FROM python:3.8-bullseye
MAINTAINER alexzaza17(bernardtapi1702@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential python3-dev libldap2-dev libsasl2-dev slapd ldap-utils tox lcov valgrind
WORKDIR /
COPY requirements.txt /
RUN pip3 install -r requirements.txt
COPY . /
EXPOSE 5000
#VOLUME [/data]
CMD ["python", "./student_age.py"]

