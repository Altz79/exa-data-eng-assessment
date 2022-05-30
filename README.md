# ![Tests](https://github.com/Altz79/code-20220104---fedirbaronenko/actions/workflows/python-app.yml/badge.svg)

## Solution for FHIR standard data processing

###### Output
Data from json files converted into tabular format. For members of analytics team two options will be possible:
- take a look at all the data (138 columns). Some of the columns still have nested structures that could be unpacked later, depending on the specific need. But this option will simplify the understanding of what we currently have and can extract from files in general.
![all_data](https://prnt.sc/JpKI0-NmV5-L)

- “patient_profile” table as an example of more structured data that we can have from each of “resourceTypes” that are present in the data.
![patient_profile](https://prnt.sc/XlFawlrPM2vq)

Output saved:
- in CSV and Parquet formats: all_data + “Patient_profile” example

- “Patient_profile” created as MySQL database on AWS. Available for queries from any tool like MySQL Workbench
![MySQL Workbench](https://prnt.sc/7uo7OAlUfaP2)

###### Testing
Done with GitHub Actions.

###### Virtual environment 
Available from folder: data_output/virtual environment/fhir_env.rar
All dependencies installed according to the “requirements.txt” file. Python version 3.8

###### Next steps
- Discuss with analytics teams which data (columns, data format, required transformations) from available “resourceType” options are needed: 'Patient', 'Encounter', 'Condition', 'DiagnosticReport', 'DocumentReference','Claim', 'ExplanationOfBenefit', 'Observation', 'Procedure', 'Immunization', 'MedicationRequest', 'CareTeam', 'CarePlan', 'ImagingStudy', 'Medication', 'MedicationAdministration', 'Provenance', 'AllergyIntolerance', 'Device'.
- Address data scalability. If the amount of data will grow, decide on the possibility of implementing a similar solution inside the Spark environment. 
