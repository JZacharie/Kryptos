# Étape 1 : Base système et outils stables
FROM debian:bookworm-slim

# Empêcher les questions interactives lors de l'install
ENV DEBIAN_FRONTEND=noninteractive

# 1. Dépendances système (changent rarement)
RUN apt-get update && apt-get install -y \
    curl \
    python3 \
    python3-pip \
    python3-venv \
    nginx \
    && rm -rf /var/lib/apt/lists/*

# 2. Installation de kubeseal (change rarement)
RUN KUBESEAL_VERSION=0.21.0 && \
    curl -L https://github.com/bitnami-labs/sealed-secrets/releases/download/v${KUBESEAL_VERSION}/kubeseal-${KUBESEAL_VERSION}-linux-amd64.tar.gz | tar xz && \
    install -m 755 kubeseal /usr/local/bin/kubeseal

# 3. Préparation de l'environnement Python et installation des dépendances
# On crée le venv et on installe les libs AVANT de copier le code source
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
# Note: On installe Flask ici directement, ou on pourrait copier un requirements.txt
RUN pip install --no-cache-dir flask flask-cors gunicorn

# 4. Configuration Nginx stable
COPY nginx.conf /etc/nginx/sites-available/default
RUN ln -sf /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

# 5. Répertoire de travail
WORKDIR /app

# 6. Copie des fichiers statiques et du code source (changent souvent)
# En plaçant cela à la fin, une modif du code ne relance pas les étapes 1 à 4
COPY index.html .
COPY src/ ./src/
COPY certs/ ./certs/

# 7. Script de démarrage
RUN echo '#!/bin/sh\nnginx\ngunicorn --bind 0.0.0.0:5000 src.backend.main:app' > /app/start.sh && \
    chmod +x /app/start.sh

EXPOSE 80 5000

CMD ["/app/start.sh"]
