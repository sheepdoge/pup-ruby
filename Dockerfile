FROM ubuntu:18.04

RUN apt-get update -qq
RUN apt-get -y install \
  build-essential \
  git \
  python3 \
  python3-apt \
  python3-pip \
  ruby-full \
  vim

RUN ln -s /usr/bin/python3 /usr/bin/python
RUN ln -s /usr/bin/pip3 /usr/bin/pip

RUN pip install --upgrade pip
RUN pip install "ansible>=2.0,<3.0"

RUN mkdir /sheepdoge-test

WORKDIR /sheepdoge-test

ADD tasks ./tasks
ADD vars ./vars
ADD tests/* ./

RUN chmod u+x test.sh
