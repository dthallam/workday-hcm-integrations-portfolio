# Week 4: Workday Core HCM Object Model & Business Processes

## 1. Object Data Model Relationships
* **Primary Business Object:** `Worker`
* **1-to-1 (Single Instance) Links:** `Position`, `Location`, `Cost Center`, `Supervisory Organization`.
* **1-to-Many (Multi-Instance) Links:** `Dependents`, `Phone Numbers`, `Compensation Plans` (requires looping or filtering logic in integrations/reports).

## 2. WIDs vs. Reference IDs
* **WID (Workday ID):** System-generated 32-character hash that changes across tenants. Never hardcode in XSLT or integration maps.
* **Reference ID:** Human-readable, tenant-consistent identifier (`Employee_ID`, `Location_ID`, `Cost_Center_ID`). Always use for external vendor mapping.

## 3. Effective Dating & Business Process (BP) Triggers
* **Entry Date vs. Effective Date:** Integrations must evaluate **Effective Date** (not Entry Date) for future-dated hires and terminations (e.g., revoking IT access on the employee's actual last working day rather than the day HR submits the termination).
* **BP Completion Rule:** Trigger downstream vendor integrations only after final BP approval/completion to avoid syncing rescinded or rejected events.
