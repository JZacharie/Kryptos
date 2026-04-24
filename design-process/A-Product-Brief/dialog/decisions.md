# Design Decisions: Secret Seal

## Phase 0: Project Setup
- **Type:** Greenfield
- **Complexity:** Complex Web Application
- **Tech Stack:** Alpine JS + Python
- **Compliance:** GXP standards
- **Root Folder:** `design-process`

## Phase 1: Product Brief
### Step 1a: Client Profile
- **Organisation:** Sanofi (Large Enterprise, Healthcare)
- **Tech Maturity:** Recent approach to in-house digital products.
- **Key Roles:** Product Owner (Decision maker), Quality/Compliance (Stakeholders).
- **Internal Driver:** High priority automation of OpenShift secret management.

### Step 5: Business Model & Value
- **Decision:** B2B Interne (B2E)
- **Rationale:** Replacing manual/archaic processes (KeePass) with automated lifecycle management.
- **Key Outcome:** Unified management, GXP compliance (Cloud Trail), and future automated password renewal.
- **Implications:** Priority on interface simplicity and control visibility to drive internal adoption.

### Step 6: Business Customers (Internal)
- **Current Sponsor:** Équipe Innova (MES Project).
- **Future Transferees:** Sanofi Global Cybersecurity & OpenShift Platform teams.
- **Strategy:** Proof of Concept (PoC) to provide "advance-phase" security before global organizational maturity.
- **Key Constraint:** Tool must be highly tailored to current MES needs but designed for seamless hand-off to central IT/Security teams.

### Step 8: Success Criteria
- **Adoption:** 100% of MES platform secrets managed by Secret Seal (replaces KeePass).
- **Proactivity:** Alerts at 9 months for secret rotation.
- **Cybersecurity:** Formal sign-off for global use, modular/durable design.
- **Security:** Zero-leak architecture.

### Step 9: Competitive Landscape
- **Rejected:** External Secrets Operator (due to direct cluster-to-vault link requirement).
- **Architecture:** Total decoupling (Air-gapped by design) using Git as the secure transport layer for SealedSecrets.
- **Advantage:** Automation of the specific "Vault -> Sealed -> Git" pipeline required by Sanofi security policy.

### Step 10: Constraints & Design Parameters
- **Deployment:** Kubernetes / Helm Charts.
- **Config:** Environment Variables only.
- **SSO:** Google Cloud (PoC) -> Entra ID (Future).
- **Vaults:** HashiCorp (Primary) + Azure/AWS/GCP (Future).
- **Architecture:** Disconnected flow (No Cluster-to-Vault link).

### Step 10a: Platform & Device Strategy
- **Platform:** Responsive Web App (Desktop-first).
- **Browsers:** Chrome & Edge.
- **Interaction:** Clarity-focused (Explicit impact descriptions before actions).

### Product Brief Synthesis (Step 12)
- **Final Narrative presented:** Yes.
- **User confirmation:** Confirmed.
- **Outcome:** Complete Product Brief generated in `design-process/A-Product-Brief/01-product-brief.md`.
- **Completion:** 2026-04-24T09:38:00Z

### Phase 2: Trigger Mapping (Dream Mode)
- **Mode:** Dream (Autonomous generation).
- **Core Insights:** Focused on SRE "Peace of Mind" (visibility) and Dev "Speed/Safety" (templates).
- **Prioritization:** Dashboard and Templates identified as High Priority (15/15 and 13/15).
- **Artifacts:** `trigger-map.md`, personas for Sam (SRE) and Dylan (Dev).
- **Completion:** 2026-04-24T09:40:00Z
