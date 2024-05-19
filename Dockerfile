FROM continuumio/miniconda3:latest

RUN mkdir /home/app

RUN apt-get update

RUN apt-get install -y python

RUN pip install mlflow \
    boto3 \
    pymysql

COPY 1.sh /home/app/1.sh

EXPOSE 80

CMD bash /home/app/1.sh