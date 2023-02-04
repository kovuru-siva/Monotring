FROM centos:7


RUN yum update -y && yum install -y wget

#Downloading the file

RUN wget https://github.com/prometheus/prometheus/releases/download/v2.24.0/prometheus-2.24.0.linux-amd64.tar.gz

RUN tar xvfz prometheus-2.24.0.linux-amd64.tar.gz

COPY prometheus.yml /prometheus-2.24.0.linux-amd64/prometheus.yml

WORKDIR /prometheus-2.24.0.linux-amd64/

EXPOSE 9090

CMD [ "./prometheus", "--config.file=prometheus.yml" ]




