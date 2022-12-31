# Crowdfunding ETL

## Overview 

Independent Funding is a crowdfunding platform for funding independent projects or ventures, and over the last years, it has been growing. Due to this fact, it needs to move data from Excel to a PostgreSQL database, as it is more convenient for them. So the analytics team will be able to perform more efficient analysis and reports for company stakeholders and possible donors. 

## Expected outcomes 

- Extraction and transformation of the data from the large Excel file into CSV files.

- Creation of a PostgreSQL database and tables by using an ERD.

- Performance of SQL queries to generate desired reports. 


## Tools 

In this project, we used the extract, transform, and load process in order to create data pipelines. Then we create a PostgreSQL database and table schemas by using an entity relationship diagram (ERD). The final outcome was the performance of data analysis using SQL. 

ETL is a flexible process for moving data and it breaks down in 3 phases.
* Extract; read the data from multiple sources.
* Transform; Cleand and structure data in the desired form.
* Load; write data into a data base for storage. 

## Data 

The current dataset includes the following data about the crowdfunding projects:
1. ID number.
2. Company name.
3. Blurb about the project.
4. Number of backers.
5. Category and subcategory.

## Results

Performance of an ERD to have a solid base to work on. 

<img width="935" alt="Screen Shot 2022-12-30 at 10 28 12 PM" src="https://user-images.githubusercontent.com/113856917/210125253-b9e58e1d-8569-426b-9c6d-6e582d43c40b.png">

Extracting and sorting the necessary data, and a Data Frame was created with it. 

<img width="436" alt="Screen Shot 2022-12-30 at 10 49 41 PM" src="https://user-images.githubusercontent.com/113856917/210125294-fd7c514f-d06f-4093-a0ea-ce4ed605c7ca.png">


