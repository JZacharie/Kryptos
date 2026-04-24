# Product Concept: Secret Seal

## Core Structural Idea: Namespace-centric Monitoring & Sync Hub
The product is organized as a command center where the primary unit of navigation is the **OpenShift Namespace**. It acts as both a health dashboard and an automation bridge.

## Implementation Principle: "Vault-to-GitOps" Orchestration
- **Source:** Cloud Provider Vaults (Azure, AWS, GCP).
- **Transformation:** Automatic conversion to Kubernetes Secrets then SealedSecrets.
- **Destination:** Project Git Repository (Single Source of Truth for Argo CD).
- **Trigger:** Manual refresh or automated renewal via a central UI.

## Rationale
Transitioning from a vulnerable, manual system (KeePass) to a decentralized but unified architecture. This structure ensures secrets are never exfiltrated as a single file and every action is governed by RBAC and logged in an Audit Trail.

## Concrete Example
An SRE selects the "MES-Production" namespace. They immediately see a secret highlighted in **Red** because it's older than a year. They click a "Refresh" button, which triggers the fetch from the corporate Vault, re-seals the secret, and pushes a commit to the Git repository, which Argo CD then synchronizes to the cluster.

## Features Stemming From Concept
- **Multi-cluster Health Dashboard:** Visual status of secret age/presence across namespaces.
- **Secret Templates:** Guided creation for common types (DB, LDAP, Git PAT).
- **Two-tier Deletion:** Soft delete (disable) and Hard delete (remove from Vault).
- **Audit Reporting:** Automated logs of "Who, What, When" per namespace.
