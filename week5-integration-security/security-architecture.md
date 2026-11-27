# Week 5: Workday Integration Security Architecture

## 1. The 3-Layer Security Chain (PeopleSoft → Workday)
* **ISU (Integration System User):** Dedicated non-human service account with **"Do Not Allow UI Sessions"** enabled (equivalent to a PeopleSoft User Profile/OPRID). Prevents integration failures when employees change roles or leave.
* **ISSG (Integration System Security Group):** Security container assigned to the ISU (equivalent to a PeopleSoft Role).
  * **Unconstrained:** Access to all workers across the tenant.
  * **Constrained:** Restricted to a specific subset (e.g., India-only workers for a local benefits vendor).
* **Domain Security Policies:** Granular data permissions assigned to the ISSG (equivalent to PeopleSoft Permission Lists).

## 2. Least Privilege & Activation Rules
* **Get vs. Put:** Outbound integrations require **`Get`** (read-only) access; inbound integrations require **`Put`** (write) access. Never grant `Put` access to outbound vendor feeds.
* **Mandatory Activation:** Permission updates do not take effect until running the **`Activate Pending Security Policy Changes`** task. Skipping this step causes `403 Forbidden` errors or blank output fields.
