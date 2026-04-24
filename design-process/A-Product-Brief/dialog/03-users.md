# User Analysis: Secret Seal

## Primary User: SRE / DevOps Engineer
**Role & Context:** Technical experts managing OpenShift clusters and multi-cloud infrastructure for Sanofi.
**Daily Experience:** Currently using archaic tools like KeePass, leading to manual errors and lack of traceability.

### Behavioral Profile
- **Needs:**
    - Visual indicators of secret age (Red > 1yr, Yellow > 6mo).
    - Template-driven creation for complex types (DB, LDAP, Git PAT, Cloud services).
    - Lifecycle management: Soft delete (stop reading) vs. Hard delete (irreversible).
    - Simplified password management for Service Accounts.
- **Frustrations:** Lack of visibility on secret staleness and difficulty in ensuring consistent secret formats across namespaces.
- **Goals:** Automate secret rotation/refresh and have a clear audit trail for compliance.

## Secondary Users / Stakeholders
- **Cybersecurity Team:** Future transferees who need proof of traceability and security standards.
- **Compliance/Quality:** Need the generated audit reports to ensure GXP alignment.

## Key Scenarios Captured
1. **Visual Health Check:** Identifying at a glance which secrets need rotation based on age.
2. **Template-based Creation:** Creating an Argo CD or DB secret in seconds using a pre-defined structure.
3. **Safe Decommissioning:** Disabling a secret safely (soft delete) before permanent removal.
4. **Audit Reporting:** Generating a report of "Who did what and when" for a specific namespace.
