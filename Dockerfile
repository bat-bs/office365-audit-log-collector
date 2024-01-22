FROM debian:stable-slim
WORKDIR /app
COPY Linux/* .
COPY Docker/entrypoint.sh .
RUN \
  mv *OfficeAuditLogCollector* OfficeAuditLogCollector && \
  chmod +x OfficeAuditLogCollector && \
  chmod +x entrypoint.sh

ENTRYPOINT ["bash", "-c", "/app/entrypoint.sh"]