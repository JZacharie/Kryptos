---
design_intent: D
design_status: not-started
---
# Scenario 01: Sam vérifie la santé des clusters

## Strategic Context
| Question | Answer |
|----------|--------|
| **What transaction?** | Vérifier la santé globale des secrets et synchroniser un secret obsolète. |
| **Business Goal?** | Optimiser l'Efficacité Opérationnelle SRE (Objective 2.2). |
| **Persona?** | Sam le SRE (Priority 1). |
| **Real-life Situation?** | Routine du matin (8h30) au poste de travail. |
| **Mental State?** | Hope: Tout est vert. Worry: Panne non détectée. |
| **Device?** | Desktop. |
| **Entry Point?** | Favori Chrome "Secret Seal". |
| **User Success?** | Secret jaune synchronisé et repassé au vert en moins d'une minute. |
| **Business Success?** | Zéro incident de production, MTTR minimal. |

## Shortest Path (Sunshine Path)
1. **Tableau de bord (Dashboard)** — Sam voit un point jaune sur le namespace 'mes-prod'.
2. **Détail du Namespace (mes-prod)** — Sam identifie le secret 'db-api-password' comme obsolète.
3. **Détail du Namespace (mes-prod)** — Sam clique sur 'Sync' et voit la confirmation. ✓

---
**Status:** Outline Complete
**Next Step:** Detail Scenario Steps
