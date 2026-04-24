---
design_intent: D
design_status: not-started
---
# Scenario 02: Dylan crée un secret de base de données

## Strategic Context
| Question | Answer |
|----------|--------|
| **What transaction?** | Créer un secret de base de données valide et scellé via un template. |
| **Business Goal?** | Démocratiser la Gestion (Self-Service) (Objective 3.1). |
| **Persona?** | Dylan le Développeur (Priority 2). |
| **Real-life Situation?** | Déploiement d'un nouveau micro-service en cours de sprint. |
| **Mental State?** | Hope: Autonomie et rapidité. Worry: Erreur YAML ou leak accidentel. |
| **Device?** | Desktop. |
| **Entry Point?** | Lien "Add Secret" du portail développeur. |
| **User Success?** | Secret créé et scellé dans Git en moins de 30s. |
| **Business Success?** | Autonomie dev accrue, réduction de la charge SRE. |

## Shortest Path (Sunshine Path)
1. **Détail du Namespace (mes-dev)** — Dylan clique sur "Nouveau Secret".
2. **Création de Secret (Templates)** — Dylan choisit le template "Database" et remplit les champs.
3. **Création de Secret (Templates)** — Dylan valide et voit la confirmation du commit GitOps. ✓

---
**Status:** Outline Complete
**Next Step:** Detail Scenario Steps
