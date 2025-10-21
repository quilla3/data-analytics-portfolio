# Hadoop Mini Projects Overview

This repository **`hadoop-mini-projects`** contains six independent mini projects designed to build practical experience with the Hadoop ecosystem — including **HDFS**, **MapReduce**, **Hive**, **HBase**, **Pig Latin**, and **Spark**.  
Each project folder includes its own tasks, scripts, and output reports.

---

## 📚 Table of Contents
1. [Project 1 — HDFS and MapReduce Applications](#-project-1--hdfs-and-mapreduce-applications)
2. [Project 2 — Conceptual Modelling and Implementation in Hive](#-project-2--conceptual-modelling-and-implementation-in-hive)
3. [Project 3 — Querying a Data Cube in Hive](#-project-3--querying-a-data-cube-in-hive)
4. [Project 4 — Design and Implementation of HBase Tables](#-project-4--design-and-implementation-of-hbase-tables)
5. [Project 5 — Data Processing with Pig Latin](#-project-5--data-processing-with-pig-latin)
6. [Project 6 — Data Processing and Stream Processing with Spark](#-project-6--data-processing-and-stream-processing-with-spark)
7. [How to Use This Repository](#-how-to-use-this-repository)

---

## 📁 [Project 1 — HDFS and MapReduce Applications](01-hdfs-mapreduce)
Work directly with HDFS and develop Python-based MapReduce applications using Hadoop Streaming.

**Key Topics**
- HDFS file and folder operations (CLI and Python)  
- Using the `snakebite` client  
- Writing mapper and reducer scripts in Python  
- Running and testing Hadoop Streaming jobs  

---

## 📁 [Project 2 — Conceptual Modelling and Implementation in Hive](02-hive-data-warehouse)
Model and implement a small data warehouse in Hive.

**Key Topics**
- Logical design of a **snowflake schema**  
- Surrogate, primary, and foreign keys  
- Implementation of fact and dimension tables  
- 0NF design for complex employee–project–skill relations  

---

## 📁 [Project 3 — Querying a Data Cube in Hive](03-hive-data-cube)
Perform analytical queries in Hive using advanced aggregation and window functions.

**Key Topics**
- Internal tables and data loading  
- `GROUP BY` with `CUBE`, `ROLLUP`, and `GROUPING SETS`  
- Analytic functions (`ROW_NUMBER()`, `AVG()`)  
- Writing and processing Hive scripts  

---

## 📁 [Project 4 — Design and Implementation of HBase Tables](04-hbase-tables)
Design, create, and query HBase tables through HBase Shell.

**Key Topics**
- Table design using column families and qualifiers  
- Data insertion, versioning, and updates  
- Adding new column families  
- Querying and managing HBase via shell scripts  

---

## 📁 [Project 5 — Data Processing with Pig Latin](05-pig-data-processing)
Perform relational-style analysis using Apache Pig on data stored in HDFS.

**Key Topics**
- Loading data from HDFS into Pig  
- Filtering, grouping, and joining  
- Querying and summarizing data using Pig Latin  

---

## 📁 [Project 6 — Data Processing and Stream Processing with Spark](06-spark-processing)
Use PySpark for both batch and streaming data analytics.

**Key Topics**
- Defining schemas and DataFrames  
- Aggregating and filtering data using Spark SQL  
- Structured streaming from live sources (`netcat`)  
- Real-time average temperature computation  

---

## 🧩 How to Use This Repository
Each sub-project contains a `README.md` file with detailed instructions. Refer to the respective directories to execute the tasks.

---

**Environment:** Hadoop, Hive, HBase, Pig, Spark (PySpark), MapReduce, HDFS  
**Purpose:** Academic mini-projects demonstrating practical big data processing skills.
