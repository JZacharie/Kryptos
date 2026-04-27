# 🛡️ Kryptos - Secret Seal Platform

**Kryptos** (internally known as **Secret Seal**) is a premium, self-service security utility designed to simplify the "Sealing" of Kubernetes secrets. It provides a bridge between developers and the **Bitnami SealedSecrets** controller, ensuring that sensitive data can be safely stored in public Git repositories without risk of exposure.

## 🎯 The Vision
Modern DevOps requires GitOps. But GitOps requires secrets. Kryptos removes the friction of manual `kubeseal` CLI usage by providing a high-fidelity, user-friendly interface that adheres to the highest security standards.

## ✨ Key Features
- **One-Click Sealing**: Convert raw environment variables or configuration blocks into encrypted `SealedSecret` manifests.
- **Cyber-Premium UI**: A state-of-the-art interface utilizing **Glassmorphism**, neon accents, and high-contrast alert hierarchies.
- **GitOps Ready**: Generates YAML outputs that are directly compatible with ArgoCD and standard K8s manifests.
- **Scoped Security**: Supports `cluster-wide` and `namespace-scoped` sealing patterns.
- **Integrated Certificate Management**: Automatically utilizes the cluster's public sealing key.

## 🏗️ Technical Architecture
Kryptos is built for speed and reliability within the `jo3` ecosystem:

### 🧡 Frontend (The UI)
- **Engine**: Alpine.js for lightweight, reactive interactions.
- **Styling**: Vanilla CSS with a focus on modern aesthetics:
  - `backdrop-filter: blur(12px)` for container transparency.
  - Custom neon color tokens (Electric Blue, Error Crimson).
  - High-readability typography using **Outfit** and **Inter**.

### 💙 Backend (The Engine)
- **Framework**: Flask (Python) for rapid API orchestration.
- **Core Utility**: Direct integration with the `kubeseal` binary.
- **Security**: Handles the public certificate injection and command execution in an isolated environment.

### 💛 Infrastructure (The Deployment)
- **Containerization**: Multi-stage Docker builds.
- **Reverse Proxy**: Nginx for static file serving and API routing.
- **Orchestration**: Deployed via Helm charts on Kubernetes.

## 🚀 Getting Started

### Prerequisites
- Access to the Jo3 cluster.
- The SealedSecrets certificate must be mounted at `/app/certs/sealed-secrets.crt`.

### API Usage
Kryptos exposes a simple REST API for programmatic sealing:

```bash
curl -X POST https://kryptos.p.zacharie.org/api/seal \
  -H "Content-Type: application/json" \
  -d '{
    "name": "my-database-secret",
    "namespace": "production",
    "value": "super-secret-password"
  }'
```

## 📜 Repository Structure
```
.
├── src/
│   ├── backend/          # Flask API and kubeseal logic
│   └── frontend/         # Alpine.js UI and Cyber-Premium styles
├── design-process/       # UX Scenarios, Trigger Maps, and Design Tokens
├── certs/                # Local dev certificate storage (gitignored)
├── Dockerfile            # Multi-service container definition
└── docker-compose.yml    # Local development stack
```

## 🚦 Status: 🟢 Production Ready
The Kryptos platform is currently deployed and serves as the primary interface for secret management within the monitoring infrastructure.

---
*Elevating security through design.*
