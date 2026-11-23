# Week 1: XML & XPath Practice Solutions

Source file: [`employees.xml`](./employees.xml)

| # | HR Integration Use Case | XPath Expression | Expected Output |
| :--- | :--- | :--- | :--- |
| 1 | Pull `First_Name` of all workers | `/Company_Workers/Worker/Name/First_Name` | All 10 first names |
| 2 | Pull `Employee_ID` of `Active` workers | `/Company_Workers/Worker[@status='Active']/Employee_ID` | 8 active Employee IDs |
| 3 | Pull `Last_Name` of `HR Operations` workers | `/Company_Workers/Worker[Department='HR Operations']/Name/Last_Name` | Sharma, Reddy, Menon |
| 4 | Pull `First_Name` of workers earning > 85,000 | `/Company_Workers/Worker[Salary > 85000]/Name/First_Name` | Priya, Vikram, Karthik, Meera, Divya |
| 5 | Audit count of `Active` workers | `count(/Company_Workers/Worker[@status='Active'])` | `8` |
