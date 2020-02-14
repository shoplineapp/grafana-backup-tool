FROM python:3.7-slim
WORKDIR /opt/grafana-backup-tool
ADD . /opt/grafana-backup-tool
RUN pip install -r requirements.txt && \
    pip3 install awscli && \
ENTRYPOINT ["./docker_entry.sh"]