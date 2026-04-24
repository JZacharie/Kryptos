# Persona: Sam le SRE (SRE Sam) — Priority 1

**Who Sam Is:**
Expert en infrastructure OpenShift chez Sanofi, Sam est responsable de la stabilité de plusieurs clusters multi-cloud. Il a connu les pannes dues à des secrets expirés oubliés dans KeePass et ne veut plus jamais revivre ça.

**Psychological Profile:**
Sam valorise le **contrôle et la prévisibilité**. Il est naturellement méfiant envers les outils "boîte noire" qui automatisent sans expliquer. Il a besoin de voir pour croire. Pour lui, un bon outil est un outil qui lui permet de **dormir tranquille** en sachant qu'aucune expiration ne va le réveiller à 3h du matin. Il est fier de sa rigueur technique et cherche à industrialiser ses processus pour se concentrer sur des tâches à plus haute valeur ajoutée.

**Internal State:**
Lorsqu'il gère les secrets aujourd'hui, Sam se sent **vulnérable**. Il sait que le système KeePass est archaïque et qu'une erreur humaine est vite arrivée. Il ressent une **anxiété sourde** à chaque rotation de secret critique.

**Usage Context:**
Sam utilise Secret Seal depuis son poste de travail (Desktop). Il scanne le dashboard chaque matin pour vérifier les indicateurs de santé.
1. **Access:** URL interne via SSO.
2. **Emotional State:** Vigilant, en mode "contrôle de routine".
3. **Behavior Pattern:** Scan rapide des codes couleurs (Rouge/Jaune), analyse détaillée des logs de synchro en cas de doute.
4. **Decision Criteria:** Clarté de l'impact ("Qu'est-ce qui va changer dans Git si je clique ?").
5. **Success Outcome:** Tous les secrets sont "verts" et l'audit trail est à jour.

**Relationship to Business Goals:**
- ✅ **Assurer la Sécurité & Conformité Sanofi:** Garant de la mise en œuvre réelle des politiques de sécurité.
- ✅ **Optimiser l'Efficacité Opérationnelle SRE:** Principal bénéficiaire du gain de temps de 80%.
- ✅ **Démocratiser la Gestion des Secrets:** Celui qui valide et surveille l'usage fait par les développeurs.
