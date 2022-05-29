#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import glob
import fastparquet


# In[2]:


path = r'C:\Users\altz7\Desktop\med_data' # please use your path
all_files = glob.glob(path + "/*.json")

frames = [pd.read_json(filename) for filename in all_files]

raw_frame = pd.concat(frames, axis=0, ignore_index=True)

#unpack nested data for one of three available dictionary keys: "resourceType", "type", "entry"
df_all_data = pd.json_normalize(raw_frame["entry"])


# In[3]:


# example of data selection for resourceType = "Patient"

# http://hl7.org/fhir/us/core/STU5/StructureDefinition-us-core-patient.html

patient = df_all_data[df_all_data["resource.resourceType"] == "Patient"]

required_columns = ["resource.resourceType", "resource.id", "resource.extension", 
                    "resource.gender", "resource.birthDate", "resource.address"]

patient = patient[required_columns]


# In[4]:


#after first json normalization all remaining nested structures are converted to lists

# first "0" in LC will represent first list item from column "resource.extension" or "resource.address"

patient["race"] = [patient["resource.extension"][i][0]['extension'][0]['valueCoding']['display'] for i in patient.index]

patient["street_raw"] = [patient["resource.address"][i][0]['line'] for i in patient.index]
patient['street'] = [''.join(map(str, l)) for l in patient['street_raw']] # convert list data into string

patient["city"] = [patient["resource.address"][i][0]['city'] for i in patient.index]

patient["state"] = [patient["resource.address"][i][0]['state'] for i in patient.index]

patient["country"] = [patient["resource.address"][i][0]['country'] for i in patient.index]

#added protection against missing data inside nested dictionary
patient["postalCode"] = [patient["resource.address"][i][0]['postalCode'] if "postalCode" in patient["resource.address"][i][0] else '' for i in patient.index]


# In[5]:


# rename and drop columns

patient = patient.drop(columns=['street_raw', 'resource.extension', 'resource.address'])


patient = patient.rename(columns={"resource.resourceType": "resource_type",
                                  "resource.id": "id",
                                  "resource.gender": "gender",
                                  "resource.birthDate": "date_of_birth"})


# In[7]:


#Saving results:

#Parquet
patient.to_parquet('patient_profile.parquet')
df_all_data.to_parquet('exa_all_data.parquet')

#CSV
patient.to_csv('patient_profile.csv', index=False)
df_all_data.to_csv('exa_all_data.csv', index=False)

