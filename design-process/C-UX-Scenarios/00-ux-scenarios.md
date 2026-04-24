# UX Scenarios: Secret Seal

> Scenario outlines connecting Trigger Map personas to concrete user journeys

**Created:** 2026-04-24
**Author:** Joseph with Saga
**Method:** Whiteport Design Studio (WDS)

---

## Scenario Summary

| ID | Scenario | Persona | Pages | Priority | Status |
|----|----------|---------|-------|----------|--------|
| 01 | Sam vérifie la santé des clusters | Sam le SRE | 2 | ⭐ P1 | ✅ Outlined |
| 02 | Dylan crée un secret de base de données | Dylan le Dev | 2 | ⭐ P1 | ✅ Outlined |
| 03 | Sam répond à une demande d'audit GXP | Sam le SRE | 1 | P2 | ⏳ Planned |
| 04 | Sam configure une nouvelle source Vault | Sam le SRE | 2 | P3 | ⏳ Planned |

---

## Scenarios

### [01: Sam vérifie la santé des clusters](01-sam-verifie-la-sante-des-clusters/01-sam-verifie-la-sante-des-clusters.md)
**Persona:** Sam le SRE — Visibilité Totale (Dashboard)
**Pages:** Dashboard, Détail du Namespace
**User Value:** Tranquillité d'esprit en voyant que tous les secrets sont synchronisés et à jour.
**Business Value:** Disponibilité continue du cluster MES, zéro incident d'expiration.

---

### [02: Dylan crée un secret de base de données](02-dylan-cree-un-secret-de-base-de-donnees/02-dylan-cree-un-secret-de-base-de-donnees.md)
**Persona:** Dylan le Développeur — Autonomie & Vitesse (Templates 30s)
**Pages:** Création de Secret (Templates), Détail du Namespace
**User Value:** Application déployée immédiatement sans attendre l'aide d'un expert.
**Business Value:** Accélération du time-to-market du projet MES.

---

## Page Coverage Matrix

| Page | Scenario | Purpose in Flow |
|------|----------|----------------|
| Tableau de bord (Dashboard) | 01 | Sam scanne les clusters et repère une alerte. |
| Détail du Namespace | 01, 02 | Sam identifie le secret obsolète / Dylan lance la création. |
| Création de Secret (Templates) | 02 | Dylan configure sa DB via le formulaire guidé. |
| Gestion du Cycle de Vie | 03 | Sam extrait les preuves pour l'auditeur. |
| Configuration des Vaults | 04 | Sam connecte une nouvelle source de secrets. |
| Profil & Authentification SSO | 04 | Sam configure son accès sécurisé. |

**Coverage:** 6/6 pages assigned to scenarios

---

## Next Phase

These scenario outlines feed into **Phase 4: UX Design** where each page gets:
- Detailed page specifications
- Wireframe sketches
- Component definitions
- Interaction details

---

_Generated with Whiteport Design Studio framework_
