FROM python:3.11-alpine as builder
LABEL org.opencontainers.image.authors="andreas@sauerwein.se"
RUN apk add --no-cache \
    gcc \
    musl-dev \
    libffi-dev 
COPY requirements.txt requirements.txt 
RUN pip install --user -r requirements.txt

FROM python:3.11-alpine as main
COPY --from=builder /root/.local /root/.local
ENV PATH=/root/.local/bin:$PATH
ENTRYPOINT [ "parsedmarc" ]