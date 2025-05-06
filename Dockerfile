FROM quay.io/keycloak/keycloak:26.1.0

ENV KC_DB=postgres
ENV KC_DB_USERNAME=keycloak_user
ENV KC_DB_PASSWORD=ATSzyvImRZWaRXqfHvMZvoJjiEG0IwHn
ENV KC_DB_URL=jdbc:postgresql://dpg-d0cs9t2dbo4c73fpo34g-a/keycloak_db_ok3z
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

RUN /opt/keycloak/bin/kc.sh build

EXPOSE 8080

CMD ["/opt/keycloak/bin/kc.sh", "start"]
