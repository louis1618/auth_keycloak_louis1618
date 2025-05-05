FROM quay.io/keycloak/keycloak:24.0.1

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-port=${PORT}", "--hostname-strict=false"]
