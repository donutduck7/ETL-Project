# Crowdfunding_ETL

Crowdfunding ETL Project

Collaborators:
-Artien Voskanian
-Tasnia Wahid

   This project focuses on extracting and transforming data through various methods into useful and clear formats. Additionally, an ERD of the transformed data is created and the csv files containing the data was uploaded into a Postgres database.

   Part 1: To begin, the category and subcategory data frames were created through the extraction and transformation of the crowdfunding excel file found in the resources folder. This was achieved with list comprehension, use of the .split function, and other tools.

   Part 2: Once again, the crowdfunding excel file was used to create a new data frame. Various column names were changed, several data types were converted, and two mergers were completed in order to create the campaign data frame. 

   Part 3: The contacts data frame was the last one to be created for this project. We chose to use regular expressions to transform the data found in the contacts excel file. “Contact_id”,” name”, and “email” columns were extracted and modified in order to create this data frame.

   Part 4: CSV files of the previous data frames were exported and used to sketch an ERD of the tables, noting the locations of primary/foreign keys. Using this information, a table schema of each CSV file was created and saved as a Postgres file. Finally, in pgAdmin, tables for each of these csv files were created and were used to import our transformed data into the database. To verify that each table was correctly created and held the correct data, multiple select statements were ran. 

