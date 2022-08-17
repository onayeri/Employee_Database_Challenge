# Employee_Database_Challenge
---
## Overveiw:
##### The purpose of this analysis was to use SQL syntax and practice writing queries to call for information from a database that has already been created. 
This allowed me to practice creating different stories by grabbing specifi information from each of the databases. 
This allowed me to join multiple tables of data to create new tables that could better explain how the data is related to one another. 
By joining different tables with employee information, I was able to gain a better picture of who the current employees are within the departments along with the ones approaching 
retirement. Through grouping and orderung the data, these data tables could be broken up to better list clear and concise information within each data table
---
## Results: 

### * Retirement Titles: 
This produced a table that joined the employees table with the titles table. 
The table is filtered to only show birth dates between 1952 - 1955 in the order of the employee number.
This give all of the data for retiring employees.
![image](https://user-images.githubusercontent.com/105329532/185016869-35bcf254-f34b-4e51-919f-a6da4c8e5b61.png)


### * Unique Titles: 
This data table offeres the same information as the table above without the date columns.
An important thing to note about this table is that it contans no duplicate rows of data unlike the Retirment table.
![image](https://user-images.githubusercontent.com/105329532/185016326-e260ed2c-9e49-4863-a274-5aae83129773.png)

* ### Retiring Titles: 
This data table groups the different titles and sums of the amount of retirees under each work title.
![image](https://user-images.githubusercontent.com/105329532/185017404-edf83676-b8a2-4b31-a10e-f4715b114a29.png)

* ### Mentorship Eligibility: 
This table offers information on the employees who have not reached retirement. The table filters specifically for birth dates that are within the year 1965. It joins information from the employee, department employee, and titles table. 
---
Summary:

* How many roles will need to be filled as the "silver tsunami" begins to make an impact?

The retiring titles table shows the amount of employees retiring along with the position that they held. This table will help inform management of the count and position titles that will need to be filled.
We could also SUM the COUNT titles to get a complete total rather than seperate counts for each role type.

SELECT COUNT (title), title
INTO retiring_titles
FROM unique_titles
GROUP BY (title)
ORDER BY COUNT DESC

* Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
If we take a COUNT of the employees who are within the 1965 birth date age group we would be able to get the count.
This query allows for a similar table as the retiring table format. It shows the count of employees approaching retirement who may ba availbale for mentorship.
SELECT COUNT(title), title
INTO mentor_count
FROM mentorship_eligibility 
GROUP BY (title)
ORDER BY COUNT DESC
![image](https://user-images.githubusercontent.com/105329532/185020927-0c5d4aa6-db42-498c-819d-a770486bc1cc.png)
