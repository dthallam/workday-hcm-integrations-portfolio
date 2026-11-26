# Workday HCM Integrations Portfolio

Hands-on technical portfolio demonstrating XML, XPath, XSLT transformations, API concepts, and HRIS integration design patterns for Workday HCM.

## Completed Modules

### Week 1: XML & XPath Fundamentals
* **Dataset:** [`week1-xml-xpath/employees.xml`](./week1-xml-xpath/employees.xml) — Mock 10-worker HR XML feed with nested structures and attributes.
* **Solutions:** [`week1-xml-xpath/xpath-solutions.md`](./week1-xml-xpath/xpath-solutions.md) — XPath queries covering node extraction, attribute/text/numeric filtering, and audit counts.

### Week 2: XSLT Document Transformation
* **Stylesheet:** [`week2-xslt/active-employees-to-csv.xsl`](./week2-xslt/active-employees-to-csv.xsl) — Saxon-tested XSLT converting raw HR XML into a vendor-ready CSV.
* **Output:** [`week2-xslt/output-active-employees.csv`](./week2-xslt/output-active-employees.csv) — Filtered active-worker extract featuring 6-digit zero-padded Employee IDs, two-decimal salary formatting, `MM/DD/YYYY` date reformatting, and conditional `<xsl:choose>` Pay Band mapping.

## Upcoming Modules
* **Week 3:** REST/SOAP APIs, JSON, SFTP, and PGP Encryption
* **Weeks 4–6:** Workday Object Model, Integration Security (ISU/ISSG), Custom Reports & RaaS
* **Weeks 7–10:** EIB, Core Connectors, Document Transformation, and End-to-End Integration Design Document (IDD)
