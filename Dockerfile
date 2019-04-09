FROM python:rc-alpine
MAINTAINER Jack Sheridan "jack.sheridan@tieto.com"

COPY ./requirements.txt /app/requirements.txt
WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 5000

ENTRYPOINT [ "python"  ]
CMD [ "app.py" ]
