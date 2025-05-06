FROM quay.io/keycloak/keycloak:26.1.0

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

ENV KC_HTTP_PORT=${PORT:-8080}
ENV KC_HOSTNAME_STRICT=false
ENV KC_HOSTNAME_STRICT_HTTPS=false
ENV KC_PROXY=edge

# EntryPoint 수정: kc.sh 실행시 포트 지정
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--http-port", "${KC_HTTP_PORT}", "--hostname-strict=false"]
