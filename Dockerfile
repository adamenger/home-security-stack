FROM fluent/fluentd:v1.3.0
COPY ./config/fluentd.conf /fluentd/etc/fluent.conf
COPY ./config/pfsense.grok /fluentd/etc/pfsense.grok
RUN apk update && apk add git ruby-dev build-base
RUN gem install fluent-plugin-grok-parser fluent-plugin-elasticsearch
