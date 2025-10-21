# HBase Table Design and Implementation

## Scope
This mini-project focuses on designing, implementing, and querying HBase tables using the HBase shell. You will practice creating tables with column families, loading sample data, retrieving multi-version cells, performing updates, and altering schemas.

## Task Specification
### Task 1: Design and Implementation of HBase Table
Consider a conceptual schema of sample data cube given below. The schema represents a data cube where applicants submit applications for positions offered by employers.

![schema1](schema1.png)

Design one HBase table to store all the information described in the conceptual schema provided.

Create a script file named `solution2-1.hb` that includes HBase shell commands to:
* Create the HBase table.
* Insert sample data for at least 2 applicants, 2 positions, 2 employers and 3 applications.

When your script is ready:
* Run it in the HBase shell.
* Save the output (the report from running the script) into a file named `solution2-1.txt`.

Make sure your script runs without any errors.

### Task 2: Querying HBase Table 
Consider a conceptual schema given below. The schema represents a data cube where students submit assignments and each submission consists of several files and it is related to one subject.

![schema2](schema2.png)

Download the file `task2-2.hb`, which contains HBase shell commands. Run this script in the HBase shell. It will create a table named `task2-2` and load some data into it.

Using the HBase shell, implement the following queries and data updates.

Save all your commands in a new script called `solution2-2.hb`. Note that each query or manipulation may require more than one command.

1. Retrieve all data from column family `SUBJECT` (qualified by `code`) and column family `FILES` (qualified by `fnumber1` and `fnumber2`).

2. Retrieve all information about the subject with code `312`, showing two versions per cell.

3. Retrieve all information about the submission of assignment `1` made by student `007` in subject `312`, showing one version per cell.

4. Update the submission date of assignment `1` by student `007` in subject `312` to `02-APR-2019`, then list the column family `SUBMISSION` to verify the change.

5. Add a new column family `DEGREE` to store degree titles of students (each student can have only one degree). Then add a degree title for student `007` (choose any title yourself), then list all information about this student.

When finished, run your script `solution2-2.hb` in the HBase shell, and save the output from processing (including results of all queries) in `solution2-2.txt`.

Make sure your script runs without any errors.

## Deliverables
- `solution2-1.txt` – Execution report for Task 1  
- `solution2-2.txt` – Execution report for Task 2