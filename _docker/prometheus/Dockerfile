# Используем официальный образ Ubuntu как базовый
FROM ubuntu:latest

# Устанавливаем необходимые пакеты
RUN apt-get update && apt-get install -y wget gettext && \
    wget https://github.com/prometheus/prometheus/releases/download/v2.45.0/prometheus-2.45.0.linux-amd64.tar.gz && \
    tar xvf prometheus-2.45.0.linux-amd64.tar.gz && \
    mv prometheus-2.45.0.linux-amd64/prometheus /bin/prometheus && \
    rm -rf prometheus-2.45.0.linux-amd64*

# Устанавливаем рабочую директорию
WORKDIR /etc/prometheus

# Указываем точку входа
ENTRYPOINT ["/bin/prometheus"]
