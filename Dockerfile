FROM quay.io/keycloak/keycloak:26.1.0

ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true
ENV JAVA_OPTS_APPEND="-Dkeycloak.profile=preview"

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start"]
