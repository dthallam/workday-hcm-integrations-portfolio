# Week 7: EIBs (Enterprise Interface Builders) & Core Connectors

## 1. Enterprise Interface Builder (EIB)
A guided, no-code/low-code tool for simple one-way integrations following a 3-step pipeline: **Get Data → Transform → Deliver**.

* **Outbound EIB:**
  * **Get Data:** Calls an Advanced Custom Report (RaaS).
  * **Transform:** Optional—outputs raw CSV/XML or applies a custom XSLT.
  * **Deliver:** Sends via SFTP (with PGP encryption).
  * *Use Case:* Full-population extracts (e.g., weekly active employee dump for Power BI). Does **not** natively track deltas.
* **Inbound EIB:**
  * Workday's equivalent to PeopleSoft's **Excel-to-CI**.
  * Uses a Workday-generated Excel template tied to a Web Service to bulk-load data (e.g., 2,000 annual bonus rows) while enforcing Business Process validations.

## 2. Core Connectors (+ Document Transformation)
Pre-built Workday integration templates designed for ongoing external vendor feeds (Payroll, Benefits, IT Provisioning).

* **Built-in Change Detection (Delta Feeds):** Automatically compares current data against the *Last Successful Run* to send only new hires, terminations, and field changes.
* **Document Transformation (DT):** Chains an XSLT stylesheet directly after the Core Connector to convert Workday's standard XML into a vendor's exact CSV or pipe-delimited format.
