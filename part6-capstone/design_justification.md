## Storage Systems
Data consumed from Datalakes & Datawarehouses from ML to Predict patient readmission risk using historical treatment data.
Vector Database Allow doctors to query patient history in plain English.
Datawarehouse (Star Schema) used to Generate monthly reports for hospital management (bed occupancy, department-wise costs).
Data lake used to Stream and store real-time vitals from ICU monitoring devices.
MySQL-Patient Records.
MongoDB-Medical Notes.

## OLTP vs OLAP Boundary
OLTP- Consist system like MySQL & MongoDB which ends before ETL starts.
OLAP-It starts after when ETL clean the data consumed from OLTP System and transformed it into Datawarehoses.


## Trade-offs
Tangled or Complex architecture due to use of multiple systems like MySQL,MongoDB,Datalake,Datawarehouse & Vector DB, also there sychronization. To overcome this we have to define well structured ETL flow.

