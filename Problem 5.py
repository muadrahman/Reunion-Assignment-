#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
from datetime import datetime

# Load your CSV data into a pandas DataFrame
file_path = r"C:\Users\mrmua\OneDrive\Desktop\Interview\Assignment_MySQL_ecommerce\Time Series Data.csv"
df= pd.read_csv(file_path)

# Function to convert 12-hour AM/PM format to 24-hour format
def convert_to_24hr(time_str):
    return datetime.strptime(time_str, '%d-%b-%y %I:%M %p').strftime('%Y-%m-%d %H:%M:%S')

# Apply conversion to 'Start' and 'End' columns
df['Start'] = df['Start'].apply(convert_to_24hr)
df['End'] = df['End'].apply(convert_to_24hr)

# Display the updated DataFrame
df


# In[2]:


# Sort the dataframe by Name and Start time
df.sort_values(by=['Name', 'Start'], inplace=True)

# Initialize the result list
result = []


# In[3]:


df


# In[4]:


# Process each bot's data
for name, group in df.groupby('Name'):
    group = group.sort_values(by='Start')
    current_start = None
    current_end = None
    activities = []
    
    for _, row in group.iterrows():
        if current_start is None:
            current_start = row['Start']
            current_end = row['End']
            activities = [row['Activity']]
        else:
            if row['Start'] <= current_end:  # Overlapping or contiguous period
                current_end = max(current_end, row['End'])
                activities.append(row['Activity'])
            else:  # Non-overlapping period, save the current period and reset
                result.append([name, current_start, current_end, activities])
                current_start = row['Start']
                current_end = row['End']
                activities = [row['Activity']]
    
    # Append the last period
    if current_start is not None:
        result.append([name, current_start, current_end, activities])


# In[5]:


# Convert result to DataFrame
result_df = pd.DataFrame(result, columns=['Name', 'Start', 'End', 'Activities'])


# In[6]:


result_df


# In[7]:


# Output the result
output_path = r"C:\Users\mrmua\OneDrive\Desktop\Interview\Assignment_MySQL_ecommerce\Aggregated_Time_Series.xlsx"
result_df.to_excel(output_path, index=False)


# In[8]:


print(f"Aggregated data saved to {output_path}")

