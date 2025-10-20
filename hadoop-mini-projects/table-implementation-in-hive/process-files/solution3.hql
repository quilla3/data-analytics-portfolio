CREATE TABLE IF NOT EXISTS school (
    SchoolKey CHAR(5),
    name STRING,
    budget DECIMAL(10, 2)
) 
    ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

CREATE TABLE IF NOT EXISTS student (
    StudentKey CHAR(5),
    snum INT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    SchoolKey CHAR(5)
) 
    ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

CREATE TABLE IF NOT EXISTS degree (
    DegreeKey CHAR(2),
    name VARCHAR(50),
    years INT
)
    ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

CREATE TABLE IF NOT EXISTS subject (
    SubjectKey CHAR(6),
    code STRING,
    title STRING,
    credits INT,
    DegreeKey CHAR(2)
)
    ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

CREATE TABLE IF NOT EXISTS enrolment (
    StudentKey CHAR(5),
    SubjectKey CHAR(6),
    enrolment_date DATE,
    grade VARCHAR(30),
    fee DECIMAL(10, 2)
)
    ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

LOAD DATA LOCAL INPATH '/home/bigdata/Desktop/school.tbl' INTO TABLE school;
LOAD DATA LOCAL INPATH '/home/bigdata/Desktop/student.tbl' INTO TABLE student;
LOAD DATA LOCAL INPATH '/home/bigdata/Desktop/degree.tbl' INTO TABLE degree;
LOAD DATA LOCAL INPATH '/home/bigdata/Desktop/subject.tbl' INTO TABLE subject;
LOAD DATA LOCAL INPATH '/home/bigdata/Desktop/enrolment.tbl' INTO TABLE enrolment;

SELECT * FROM school;
SELECT * FROM student;
SELECT * FROM degree;
SELECT * FROM subject;
SELECT * FROM enrolment;