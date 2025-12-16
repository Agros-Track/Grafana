FROM grafana/grafana:latest

COPY dashboards /etc/grafana/dashboards
COPY datasources /etc/grafana/provisioning/datasources
COPY dashboards.yml /etc/grafana/provisioning/dashboards

ENV GF_SECURITY_ADMIN_USER=admin \
    GF_SECURITY_ADMIN_PASSWORD=Admin123! \
    GF_AUTH_ANONYMOUS_ENABLED=true \
    GF_AUTH_ANONYMOUS_ORG_ROLE=Viewer \
    GF_SECURITY_ALLOW_EMBEDDING=true \
    GF_SECURITY_COOKIE_SAMESITE=none \
    GF_SECURITY_COOKIE_SECURE=true

EXPOSE 3000
