## ETL Decisions

### Decision 1 — <Standardize Category Casing>
Problem:Category Casing Inconsistent
e.g. electronics,Electronics,Grocery,Groceries,
Resolution:Standardize Category Casing 
e.g.Electronics,Groceries,Clothing

### Decision 2 — <Standardize Date format>
Problem:Date format is not feasible for coding and insertion purpose
e.g. 29-08-2023 (dd-mm-yyyy)
Resolution:Standardize Date format
e.g.2023-08-29 (yyyy-mm-dd)

### Decision 3 — <Standardize total_sales>
Problem:only unit_sold & unit_price is given for each transaction.
Resolution:calculate total_sales transactionwise using formula (unit_sold*unit_price) which is required for analysis.

