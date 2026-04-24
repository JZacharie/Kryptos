# Product Brief: Secret Seal

## Strategic Summary
Secret Seal est né du besoin de moderniser et de sécuriser la gestion des secrets OpenShift au sein de l'organisation Sanofi. En remplaçant des méthodes manuelles et vulnérables (KeePass) par un orchestrateur GitOps automatisé, le projet vise à offrir une résilience totale (Disaster Recovery) et une conformité GXP sans faille. L'idée force est de découpler totalement les clusters des Vaults externes en utilisant Git comme transport sécurisé pour des secrets "scellés" par namespace.

## Vision
Standardiser et automatiser la gestion des secrets à travers l'infrastructure multi-cloud de Sanofi pour offrir une agilité totale, une résilience accrue (Disaster Recovery) et une conformité GXP sans faille, tout en simplifiant radicalement le quotidien des équipes techniques.

## Positioning
**Positioning Statement:**
Pour les développeurs et équipes SRE/DevOps de Sanofi qui ont besoin d'une gestion des secrets sécurisée et automatisée, Secret Seal est un orchestrateur de secrets GitOps qui centralise et transforme les identifiants Cloud en SealedSecrets Kubernetes. Contrairement aux solutions manuelles ou dépendantes du réseau lors du déploiement, nous offrons un flux 'Vault-to-Git' automatisé via une interface simple, garantissant une conformité GXP totale et une résilience maximale sans aucune dépendance externe pour OpenShift.

**Components:**
- **Target Customer:** Développeurs, équipes SRE et DevOps de Sanofi.
- **Their Need:** Gestion sécurisée, automatisée et agnostique des secrets dans un pipeline GitOps (Argo CD).
- **Product Category:** Orchestrateur de secrets GitOps (Cloud-to-SealedSecret).
- **Key Benefit:** Sécurité maximale (secrets scellés dans Git) et simplicité opérationnelle (mise à jour via UI).
- **Alternatives:** KeePass (manuel), Bitnami SealedSecrets seul (manuel), solutions avec couplage réseau au runtime (Vault, External Secrets).
- **Differentiator:** Automatisation du flux "Vault Cloud -> SealedSecret -> Git" via une UI de contrôle, supprimant toute dépendance réseau pour OpenShift lors des déploiements.

## Target Users
**Primary User: SRE / DevOps Engineer**
- **Context:** Experts techniques gérant des clusters OpenShift multi-cloud.
- **Behavioral Insights:** Besoin de signaux visuels (Rouge/Jaune) sur l'âge des secrets. Utilise des templates pour fiabiliser la création (DB, LDAP). Priorise la traçabilité (Audit Trail) pour la conformité.
- **Frustration:** Outils archaïques, manque de visibilité sur l'obsolescence, risque d'exfiltration.

## Business Model & Value
**Model:** B2B Interne (B2E)
**Value Drivers:**
- Centralisation & Contrôle via RBAC.
- Conformité GXP via Cloud Trail.
- Automatisation du cycle de vie (Renouvellement automatique futur).

## Success Criteria
1. **Adoption** : 100% des secrets de la plateforme MES gérés par Secret Seal.
2. **Sécurité** : Zéro leak de secrets en clair.
3. **Proactivité** : Alertes automatiques à 9 mois d'ancienneté.
4. **Validation** : Sign-off formel de la Cybersécurité globale de Sanofi.

## Competitive Landscape
- **Unfair Advantage:** Architecture "Disconnected/Air-gapped" par design. Le secret transite uniquement scellé dans Git, protégeant le Vault central même en cas de compromission d'un cluster.

## Design Parameters & Constraints
- **Technical:** Stack Alpine JS / Python, Helm Charts, Config par variables d'env, SSO (Google/Entra ID).
- **Architecture:** Découplage total Vault-Cluster.
- **Compliance:** Audit Trail obligatoire (GXP).

## Platform & Device Strategy
- **Platform:** Responsive Web App (Desktop-first).
- **Browsers:** Chrome & Edge.
- **Interaction Model:** "Safe & Clear" - Chaque action décrit explicitement son impact technique avant exécution.

## Tone of Voice
- **Attributes:** Technique & Précis, Sécurisant & Autoritaire, Direct & Transparent, Pédagogique & Guidé.
- **Example:** "Synchroniser vers GitOps" (Bouton) / "Accès au Vault refusé : Vérifiez le Token" (Erreur).

---
**Status:** Product Brief Complete
**Next Phase:** Trigger Mapping (Phase 2)
**Last Updated:** 2026-04-24
