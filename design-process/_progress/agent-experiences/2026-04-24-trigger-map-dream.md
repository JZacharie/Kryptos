# Agent Experience: Trigger Mapping (Dream Mode) - Secret Seal
Date: 2026-04-24

## Layer 1: WDS Form Learned
- Internalized `trigger-mapping.md` principles.
- Focus on connecting Business Goals to User Driving Forces (Psychology).
- Using Effect Mapping methodology (simplified).

## Layer 2: Project Context (Initial)
- **Product:** Secret Seal (OpenShift Secret Management).
- **Vision:** Standardize/Automate secrets across multi-cloud Sanofi, ensuring GXP compliance and resilience.
- **Key Constraints:** No direct cluster-to-vault link (disconnected flow via GitOps).
- **Primary Users:** SRE / DevOps (technical, efficiency-driven).
- **Business Case:** Risk reduction, unified management, automation of password renewal.

## Layer 3: Domain Research
- **OpenShift Secret Management:** Standard involves `SealedSecrets` or `ExternalSecrets`. Sanofi rejects `ExternalSecrets` for security reasons.
- **GitOps (Argo CD):** Requires secrets to be present in Git (encrypted).
- **SRE Behavioral Patterns:** Value "single pane of glass", visibility of stale assets, and "one-click" remediation.

## Step 1: Business Goals (Drafting)
1. **Reduce Operational Risk:** Eliminate manual KeePass usage (100% migration).
2. **Ensure GXP Compliance:** 100% traceability of secret lifecycle events.
3. **Optimize MTTR (Mean Time to Recovery):** Enable rapid secret restore/rotation across clusters.
4. **Improve Infrastructure Agility:** Agnostic secret management for AWS/Azure/GCP.

## Step 2: Target Groups (Drafting)
- **Primary:** SRE / Platform Engineers (the operators).
- **Primary:** DevOps / Developers (the secret owners).
- **Secondary:** Security / Compliance Officers (the approvers/auditors).

## Step 3: Driving Forces (Drafting)
- **SRE Motivations:** Clarity of secret health (age colors), ease of bulk refresh, proof of security.
- **SRE Hurdles:** Manual overhead of sealing secrets, fear of breaking production during rotation.
- **Developer Motivations:** Simple templates for complex secrets, self-service without needing SRE for every change.
- **Developer Hurdles:** Complex Kubernetes secret syntax, waiting for SRE approval.

## Step 4: Prioritization (Drafting)
- **High Priority:** Namespace health dashboard, One-click Sync, Basic templates.
- **Medium Priority:** Proactive alerts (9 months), Multi-vault support.
- **Low Priority:** Automated password renewal (Phase 2).
