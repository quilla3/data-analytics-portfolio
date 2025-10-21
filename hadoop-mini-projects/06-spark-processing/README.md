# Data Processing and Stream Processing with Spark

## Scope
This mini-project covers two parts: batch data processing and structured stream processing with Spark. You will define schemas and load CSVs into DataFrames, run aggregations with both the DataFrame API and SQL (via temporary views), and build a simple structured streaming job that computes rolling averages from a live netcat stream.

## Task Specification
### Task 1: Data Processing With Spark
Consider the following denormalized logical schema of one-dimensional data cube.
![schema](schema.png)

Download the folder named `task4` which contains the following files: `bank.csv`, `account.csv`, and `transaction.csv`.

Open the files in a text editor to review their contents.

Upload all three files to HDFS.

Open a Terminal and start the PySpark command-line interface by typing the command `pyspark`.

In the PySpark shell, perform the following steps:

1. Create schemas for the files `bank.csv`, `account.csv`, and `transaction.csv`.

2. Load the contents of each CSV file into a separate DataFrame using the schemas you defined in the previous step.

    Count the total number of rows in each frame and then list the contents of each
frame.

3. Implement the following query on a data frame that contains information about the transactions.

    *Find the total amount of money involved in the deposit transactions per each bank. You can skip the banks that had no deposit transactions. Sort the results in the ascending order of the total amount of money found.*

4. Create a temporary view over a data frame with information about the transactions.

5. Implement the following query on a temporary view that contains information about the transactions.

    *Find the total amount of money involved in the deposit transactions per each bank. You can skip the banks that had no deposit transactions. Sort the results in the ascending order of the total amount of money found.*

When finished, copy all your PySpark commands and results from the Terminal window, and paste them into a text file named `solution4.txt`.

### Task 2: Structured Stream Processing With Spark

Read a description of the following simple data stream processing environment.

A number of temperature sensors located in different places send the temperature measurements to a central point. Each sensor sends to a central point a sequence of pairs `location,temperature` in more or less regular period of times. Data received at a central point can be considered as a single stream of data items. For example:
```
Sydney,25
Wollongong,36
Dapto,24
Sydney,25
Wollongong,34
Dapto,26
...
```
The objective of this task is to implement a data stream processing application in PySpark that continuously calculates and displays the average temperature for each location whenever a new temperature reading is received. For example, processing of a stream given above supposed to return the following values:
```
Sydney,25
Wollongong,35
Dapto,25
```
If a new record `Dapto,22` is added, the updated result should be:
```
Sydney,25
Wollongong,35
Dapto,24
```
**Steps**
1. Simulate the data stream using `netcat`.
    * Open a Terminal window and start the netcat utility.
    * Type sample data lines (e.g., `Sydney,25`, `Wollongong,36`, etc.) one by one.
2. Implement the streaming application in PySpark.
    * Open a second Terminal window and start PySpark.
    * Write a PySpark streaming application that reads the incoming stream from netcat, calculates the average temperature per location dynamically, and prints updated averages each time a new record is received.
3. Test the application.
    * In the first Terminal, continue entering new temperature readings.
    * In the second Terminal, observe that updated average temperatures are displayed automatically.
    * Repeat this for several different locations and temperatures.
4. Save your results.
    * Copy the contents from both Terminal windows:
      * The `netcat` data stream.
      * The PySpark application output (including code and results).
    * Paste everything into a file named `solution5.txt`.

## Deliverables
- `solution4.txt` – PySpark commands and results for Task 1  
- `solution5.txt` – Netcat stream, PySpark streaming code, and results for Task 2