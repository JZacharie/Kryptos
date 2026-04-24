# Persona: Dylan le Développeur (Dev Dylan) — Priority 2

**Who Dylan Is:**
Développeur applicatif travaillant sur le projet MES. Il veut livrer ses fonctionnalités rapidement. Les secrets Kubernetes sont pour lui une contrainte complexe qu'il préfère déléguer, mais il déteste attendre que les SRE soient disponibles pour créer un simple identifiant de base de données.

**Psychological Profile:**
Dylan valorise la **vitesse et l'autonomie**. Il n'est pas un expert en sécurité infrastructure et ne souhaite pas le devenir. Il a besoin de **garde-fous** pour ne pas faire d'erreurs. Il est frustré par la complexité du format YAML et la gestion manuelle des certificats. Son objectif est que "ça marche" du premier coup.

**Internal State:**
Face à la gestion des secrets actuelle, Dylan se sent **impatient et parfois inquiet**. Il a peur de commettre une erreur qui bloquerait la CI/CD ou, pire, de laisser traîner un mot de passe en clair dans son code ou son historique Git.

**Usage Context:**
Dylan utilise Secret Seal ponctuellement, lorsqu'il déploie une nouvelle application ou met à jour une config.
1. **Access:** Lien direct depuis le repo Git ou portail dev.
2. **Emotional State:** Pressé, veut finir sa tâche de déploiement.
3. **Behavior Pattern:** Utilise exclusivement les templates (DB, LDAP), remplit les champs obligatoires, valide.
4. **Decision Criteria:** Simplicité du formulaire et confirmation que le secret est bien "scellé".
5. **Success Outcome:** Son application démarre avec les bons accès sans qu'il ait eu à ouvrir un ticket aux SRE.

**Relationship to Business Goals:**
- ✅ **Assurer la Sécurité & Conformité Sanofi:** Utilise les templates sécurisés par défaut.
- ✅ **Démocratiser la Gestion des Secrets:** Acteur principal du mode Self-Service.
