FROM python:3

RUN apt-get update
RUN apt-get install -y libvips-dev python3-lxml python-lxml libxml2-dev libxslt-dev python-dev build-essential libssl-dev libffi-dev python-dev nano
RUN pip3 install pyvips cryptography pytz lxml datetime python-dateutil

WORKDIR /data

COPY opcua /data/opcua
COPY server_minimal.py.py /data

CMD [ "python", "/data/server_minimal.py" ]
