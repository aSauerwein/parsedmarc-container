FROM python:3.11
LABEL org.opencontainers.image.authors="andreas@sauerwein.se"
RUN apt-get update && apt-get install -y libxslt-dev libz-dev libxml2-dev gcc libemail-outlook-message-perl
RUN pip install parsedmarc 
ENTRYPOINT [ "parsedmarc" ]