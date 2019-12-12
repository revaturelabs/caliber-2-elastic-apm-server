FROM docker.elastic.co/apm/apm-server:7.1.0
ARG ES_HOSTS
ARG APM_HOST
ARG ALLOWED_ORIGINS
ARG KIBANA_HOST
ENV ES_HOSTS=${ES_HOSTS}
ENV APM_HOST=${APM_HOST}
ENV ALLOWED_ORIGINS=${ALLOWED_ORIGINS}
ENV KIBANA_HOST=${KIBANA_HOST}
COPY apm-server.yml /usr/share/apm-server/apm-server.yml
USER root
RUN chown root:apm-server /usr/share/apm-server/apm-server.yml
USER apm-server