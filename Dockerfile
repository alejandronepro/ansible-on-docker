FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y \
    gcc \
    python2-dev \
    libkrb5-dev \
    net-tools \
    python3-pip \
    python3-venv \
    krb5-user \
    openssh-server
    
RUN python3 -m venv /ansible-env

RUN . /ansible-env/bin/activate
# RUN mkdir -p /ansible-env
# WORKDIR /ansible-env

RUN source /ansible-env/bin/activate

RUN pip3 install --upgrade pip
RUN pip3 install --upgrade virtualenv
RUN pip3 install pywinrm
RUN pip3 install kerberos
RUN pip3 install ansible



    # apt-get install -y gcc python2-dev libkrb5-dev \
    # iputils-ping net-tools python3-pip && \
    # pip3 install --upgrade pip && \
    # pip3 install --upgrade virtualenv && \
    # pip3 install pywinrm && \
    # pip3 install kerberos && \
    # apt install krb5-user -y && \
    # pip3 install ansible && \
    # apt-get install openssh-server openssh-client -y && \
    # apt-get install sshpass -y  