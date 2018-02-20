FROM fluent/fluentd:v1.1.0
COPY ./config/fluentd.conf /fluentd/etc/fluent.conf
COPY ./config/pfsense.grok /fluentd/etc/pfsense.grok
RUN apk update && apk add git
RUN gem install fluent-plugin-grok-parser
RUN git clone https://github.com/adamenger/fluent-plugin-humio \
  && cd fluent-plugin-humio \
  && gem install bundler \
  && bundle install \
  && gem build fluent-plugin-humio.gemspec \
  && gem install --local fluent-plugin-humio-0.0.1.gem 
