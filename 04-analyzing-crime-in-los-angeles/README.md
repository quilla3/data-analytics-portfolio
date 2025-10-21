# Analyzing Crime in Los Angeles

Find out when and where crime is most likely to occur, along with the types of crimes commonly committed in LA. Serve as a data detective, supporting the Los Angeles Police Department (LAPD) in analyzing crime data to guide how they should allocate resources to protect the people of their city.

## Project Instructions
Explore the `crimes.csv` dataset and use your findings to answer the following questions:

- Which hour has the highest frequency of crimes? Store as an integer variable called `peak_crime_hour`.
- Which area has the largest frequency of night crimes (crimes committed between 10pm and 3:59am)? Save as a string variable called `peak_night_crime_location`.
- Identify the number of crimes committed against victims of different age groups. Save as a pandas Series called `victim_ages`, with age group labels `"0-17"`,` "18-25"`, `"26-34"`, `"35-44"`, `"45-54"`, `"55-64"`, and `"65+"` as the index and the frequency of crimes as the values.