# Week 6: Custom Reports, Calculated Fields & RaaS

## 1. Custom Reports (PeopleSoft PS Query → Workday)
* **Advanced Report Required:** Only **Advanced** reports support Related Business Objects (RBOs) and **Reports-as-a-Service (RaaS)**. Simple Reports cannot be exposed as web services.
* **Core Components:** Data Source (population), RBOs (object links), Filters/Subfilters (criteria), and Prompts (runtime parameters).

## 2. Core Integration Calculated Fields
* **Extract Single Instance (ESI):** Isolates one specific record from a 1-to-Many (Multi-Instance) list (e.g., Most Recent Bonus Payment or Primary Work Phone).
* **Lookup Related Value (LRV):** Pulls a field across a 1-to-1 link (often stacked on top of an ESI to extract a specific value like Bonus Amount).
* **Evaluate Expression (EE):** Conditional `IF / ELSE` mapping inside Workday (reusable across reports and easier for functional teams to maintain than XSLT).
* **Format Date / Concatenate Text:** Standardizes date formats and combines text fields prior to output.

## 3. Reports-as-a-Service (RaaS)
* Enabling **Enable as Web Service** exposes an Advanced Report as a live REST/SOAP endpoint returning XML, JSON, or CSV.
* The calling **ISU** must be shared on the report and have `Get` access to every underlying field and Calculated Field.
