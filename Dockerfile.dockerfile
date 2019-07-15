FROM jenkins/jenkins

USER root

RUN apt-get update && apt-get install nano

RUN curl -O https://bootstrap.pypa.io/get-pip.py  && \
    python get-pip.py && \
    pip install ansible --upgrade