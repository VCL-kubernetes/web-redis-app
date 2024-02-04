FROM python:3.9-alpine
ADD . /code
WORKDIR /code
RUN apk add --no-cache netcat-openbsd
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
