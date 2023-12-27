FROM python:3.11
LABEL org.opencontainers.image.authors="andreas@sauerwein.se"
RUN apt-get update && apt-get install -y libxslt-dev libz-dev libxml2-dev gcc libemail-outlook-message-perl
COPY requirements.txt requirements.txt 
RUN pip install -r requirements.txt
ENTRYPOINT [ "parsedmarc" ]