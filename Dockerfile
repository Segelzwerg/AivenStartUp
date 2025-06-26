ARG PYTHON_VERSION=3.13
FROM python:${PYTHON_VERSION} AS poetry
LABEL authors="Marcel Haas"
WORKDIR /app
COPY start_service.sh start_service.sh
RUN pip install aiven-client
RUN chmod +x start_service.sh
CMD ["/app/start_service.sh"]
