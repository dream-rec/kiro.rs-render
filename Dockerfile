FROM ghcr.io/hank9999/kiro-rs:v2026.3.1
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh
CMD ["/app/start.sh"]
