# HQL Data Warehouse Modelling and Implementation

## Scope
This mini-project focuses on designing and implementing a data warehouse using Hive Query Language (HQL).  
It aims to develop practical skills in data modelling, schema design, and Hive implementation.

- Task 1 involves transforming a conceptual schema into a snowflake schema, applying surrogate keys, and creating fact and dimension tables as internal Hive tables.  
- Task 2 focuses on creating a 0NF Hive table to store complex employee-related data, using `CREATE`, `INSERT`, and `SELECT` operations to model real-world relationships.

Together, these tasks provide experience in logical design, Hive scripting, and managing internal tables within a data warehouse environment.
## Task Specification
### Task 1: Implementation of A Data Warehouse As A Collection of Internal Tables In Hive

Consider the following conceptual schema of three-dimensional data cube.
![conceptual schema](schema.png)

Perform a step of logical design and create a "snowflake schema" based on the conceptual schema provided above.
* Use surrogate keys to represent relationships between tables.
* Clearly mark primary keys, candidate keys, and foreign keys in your relational schema.
* Simplify the schema so it has only two dimensions, by combining all time-related information into a single time attribute.

Save a drawing of your "snowflake schema" in a file solution3.bmp.

Next, implement a fact table and the dimension tables as **internal tables in Hive**.

Create a script file solution3.hql that includes: 
* `CREATE TABLE` statements for all tables
* `LOAD` statements to load sample data into the internal tables (no more than 5 rows per table)
* `SELECT` statements to display the contents of each table

You can make up your own sample data.

When ready connect to Hive through beeline, process your script and save a report in
a file `solution3.txt`.

Make sure your script runs without any errors.


### Task 2: Implementation of 0NF table in Hive

Consider the following description of a sample database domain.

*We would like to store information about the employees, the projects they are assigned to, their programming skills and their employment record. An employee is described by an employee number and full name. An employee can be assigned to many projects. Some employees are not assigned to any projects. A project is identified by its name. If an employee is assigned to some projects then we need to keep information about a percentage contribution of an employee to each project. We also would like to record information about the programming languages that can be used by the employees. An employee can use none or many programming languages. An employment record consists of hire date, salary and employee number of a supervisor.*

1. Create an internal table in Hive (in 0NF form) to store information about employees, their assigned projects, and their programming skills. Save your script as `solution4.hql`.

2. In your script, include:
* `CREATE TABLE` statement for the internal table.
* `INSERT` statements with at least 5 sample rows.

  Your data should include:
  * Two employees who work on multiple projects and know multiple programming languages.
  * One employee who works on multiple projects but knows no programming languages.
  * One employee who knows multiple programming languages but works on no projects.
  * One employee who knows no programming languages and works on no projects.
  * Each employee must have a nonempty employment record.
* Add `SELECT` statements that display all rows from the table.
* Run your script `solution4.hql` using a command line interface `Beeline`, and save the output (including all query results) to `solution4.txt`.

Make sure your script runs without any errors.

## Deliverables
- `solution3.bmp` – Snowflake schema diagram  
- `solution3.txt` – Beeline execution report for Task 1  
- `solution4.txt` – Beeline execution report for Task 2