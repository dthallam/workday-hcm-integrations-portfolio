# Workday HCM Integrations Portfolio

A hands-on techno-functional portfolio combining **9+ years of enterprise HR Operations experience in PeopleSoft HCM** with practical Workday integration engineering skills—including XML, XPath, XSLT transformations, REST APIs, SFTP/PGP security, and Workday object modeling.

## Bridging PeopleSoft HCM Experience to Workday Integrations

Having managed global employee lifecycle operations, data governance, and large-scale HRIS workflow migrations (including migrating 100,000+ employee time-off workflows off PeopleSoft and Kronos), I bring a functional understanding of *why* HR integrations break—not just how to code them.

| Enterprise HR Domain | PeopleSoft HCM Background (9+ Years) | Workday Integrations Application |
| :--- | :--- | :--- |
| **Data Architecture** | Effective-dated Job Data rows, retro changes, and future-dated hires/terminations | Business Objects (BO/RBO), Effective Date vs. Entry Date logic, and Reference ID mapping |
| **Data Governance** | End-to-end employee lifecycle validation and multi-country pre-payroll input auditing | XPath filtering, XSLT data formatting, conditional mapping (`<xsl:choose>`), and exception handling |
| **Security & Access** | Role-based user profiles and permission-list governance | Integration System Users (ISUs), Security Groups (ISSGs), and Domain Security Policies |
| **Reporting & Delivery** | Operational analytics (Power BI, Power Query, QuickSight) and batch workflow governance | Custom Reports, RaaS, SFTP (SSH key auth), and PGP file encryption |

---

## Completed Modules

### Week 1: XML & XPath Fundamentals
* **Dataset:** [`week1-xml-xpath/employees.xml`](./week1-xml-xpath/employees.xml) — Mock 10-worker HR XML feed with nested parent-child elements and status attributes.
* **Solutions:** [`week1-xml-xpath/xpath-solutions.md`](./week1-xml-xpath/xpath-solutions.md) — Validated XPath queries covering node navigation, attribute/text/numeric filtering, and record count audits.

### Week 2: XSLT Document Transformation
* **Stylesheet:** [`week2-xslt/active-employees-to-csv.xsl`](./week2-xslt/active-employees-to-csv.xsl) — Saxon-tested XSLT transforming raw HR XML into a vendor-ready CSV.
* **Output:** [`week2-xslt/output-active-employees.csv`](./week2-xslt/output-active-employees.csv) — Active-worker extract featuring 6-digit zero-padded Employee IDs, two-decimal salary formatting, `MM/DD/YYYY` date reformatting, and conditional `<xsl:choose>` Pay Band logic.

### Week 3: REST APIs, JSON & File Security
* **Documentation:** [`week3-apis-security/api-and-security-notes.md`](./week3-apis-security/api-and-security-notes.md) — Live `GET` (`200 OK`) and `POST` (`201 Created`) REST API testing via Hoppscotch, HTTP status code troubleshooting, and SFTP/PGP encryption architecture.

### Week 4: Workday Core HCM Object Model & Business Processes
* **Architecture Map:** [`week4-workday-architecture/object-model-and-bp-map.md`](./week4-workday-architecture/object-model-and-bp-map.md) — Analysis of 1-to-1 vs. 1-to-Many Business Object relationships, WID vs. Reference ID best practices, and Business Process (BP) completion triggers.

---

## Upcoming Modules
* **Week 5:** Integration Security Architecture (ISUs, ISSGs, Domain Security Policies)
* **Week 6:** Custom Reports, Calculated Fields & Reports-as-a-Service (RaaS)
* **Weeks 7–10:** EIB, Core Connectors, Document Transformation, and End-to-End Integration Design Document (IDD)

## Core Tools & Stack
`XML` • `XPath` • `XSLT (Saxon)` • `REST APIs / JSON` • `SFTP & PGP` • `PeopleSoft HCM` • `Kronos (UKG)` • `Power BI` • `Power Query` • `Advanced MS Excel`
