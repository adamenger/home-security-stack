# humio security stack

Getting pfsense logs into fluentd and then into humio

# setup

1. clone this repo
2. modify `config/fluentd.conf` with your humio config values
3. setup docker-compose stack `docker-compose up -d`
4. Configure pfsense to ship logs to the fluentd container in this stack
