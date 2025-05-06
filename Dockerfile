FROM quay.io/keycloak/keycloak:26.1.0

ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
ENV JAVA_OPTS_APPEND="-Dkeycloak.profile.feature.upload_scripts=enabled"

RUN /opt/keycloak/bin/kc.sh build

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start"]