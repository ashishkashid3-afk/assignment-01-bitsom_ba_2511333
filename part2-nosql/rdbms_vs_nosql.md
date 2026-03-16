## Database Recommendation
In healthcare system patient data is highly sensitive, require strong consistency for tracking, reliability and can be transactional.So considering this I recommend to RDBMS (MySQL), as RDBMS follows ACID properties & helpful to fullfill above mentioned requirements for healthcare startup patient management system.
On the other hand MongoDB follows BASE properties which prefer high volume & fleibility instead of consistency so not suitable for patient management system.
According to CAP theorem RDBMS typically prefer consistency & partition tolerance which suits well with patient management system
If Healthcare startup also want to build a fraud detection module then I recommend the MongoDB as it is useful for handling high volume, flexible structure with different data types.
Conclusion-Use both i.e. MySQL (For patient management system) & MongoDB(For Fraud detection) 
