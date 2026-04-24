# Étape 1 : Construction / Préparation
FROM debian:bookworm-slim

# Installation des dépendances système
RUN apt-get update && apt-get install -y \
    curl \
    python3 \
    python3-pip \
    python3-venv \
    nginx \
    && rm -rf /var/lib/apt/lists/*

# Installation de kubeseal
RUN KUBESEAL_VERSION=0.21.0 && \
    curl -L https://github.com/bitnami-labs/sealed-secrets/releases/download/v${KUBESEAL_VERSION}/kubeseal-${KUBESEAL_VERSION}-linux-amd64.tar.gz | tar xz && \
    install -m 755 kubeseal /usr/local/bin/kubeseal

# Configuration du répertoire de travail
WORKDIR /app

# Copie des fichiers de l'application
COPY . .

# Configuration de Nginx pour servir le frontend
COPY nginx.conf /etc/nginx/sites-available/default
RUN ln -sf /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

# Installation des dépendances Python (Flask pour le backend de scellement)
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
RUN pip install flask flask-cors

# Exposition des ports
EXPOSE 80

# Script de démarrage pour lancer Nginx et le backend Python
RUN echo '#!/bin/sh\nnginx\npython3 src/backend/main.py' > /app/start.sh && \
    chmod +x /app/start.sh

CMD ["/app/start.sh"]
