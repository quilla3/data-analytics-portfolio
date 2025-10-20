CREATE TABLE IF NOT EXISTS employee_projects (
    enumber INT, --employee number
    full_name STRING,
    programming_languages ARRAY<STRING>,
    assigned_projects MAP<STRING, STRING>, 
    employment_record STRUCT<hire_date: DATE, salary: INT, supervisor: INT>
);


INSERT INTO employee_projects 
SELECT 1001, 'John Smith', 
    ARRAY('Python', 'Java'), 
    MAP('ProjectA', '50%', 'ProjectB', '75%'), 
    NAMED_STRUCT('hire_date', CAST('2020-01-10' AS DATE), 'salary', 80000, 'supervisor', 2003);

INSERT INTO employee_projects 
SELECT 1002, 'Jane Handason', 
    ARRAY('C++', 'Ruby'), 
    MAP('ProjectA', '40%', 'ProjectC', '60%'), 
    NAMED_STRUCT('hire_date', CAST('2019-04-20' AS DATE), 'salary', 85000, 'supervisor', 2003);

INSERT INTO employee_projects 
SELECT 1003, 'Alicia Brown', 
    ARRAY(NULL), 
    MAP('ProjectB', '90%', 'ProjectD', '10%'), 
    NAMED_STRUCT('hire_date', CAST('2021-07-12' AS DATE), 'salary', 72000, 'supervisor', 2001);

INSERT INTO employee_projects 
SELECT 1004, 'Tim Johnson', 
    ARRAY('JavaScript', 'GO', 'C#'), 
    MAP(NULL, NULL), 
    NAMED_STRUCT('hire_date', CAST('2018-03-05' AS DATE), 'salary', 90000, 'supervisor', 2002);

INSERT INTO employee_projects
SELECT 1005, 'Allen Lee', 
    ARRAY(NULL), 
    MAP(NULL, NULL), 
    NAMED_STRUCT('hire_date', CAST('2022-05-10' AS DATE), 'salary', 60000, 'supervisor', 2004);


SELECT * FROM employee_projects;
