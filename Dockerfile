FROM amazon/aws-cli

LABEL org.opencontainers.image.source https://github.com/leakytap/aws-cli-docker
LABEL org.opencontainers.image.description "Docker image for the AWS CLI"

RUN yum install -y nc \
    && yum clean all

ENV INIT_DIR /init

EXPOSE 9000

ADD run.sh /scripts/run.sh

ENTRYPOINT ["/scripts/run.sh"]
