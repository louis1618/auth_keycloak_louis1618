FROM quay.io/keycloak/keycloak:24.0.1

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin
ENV KC_HTTP_PORT=${PORT}

RUN echo "Will run Keycloak on port: ${PORT}"

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
