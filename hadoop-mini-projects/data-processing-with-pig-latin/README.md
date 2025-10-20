# Data Processing with Pig Latin

## Scope
This project is to get familiar with Pig Latin.

## Task Specification
Consider the following logical schema of one-dimensional data cube.
![schema](schema.png)

Download the folder named `task3` which contains the following files: `bank.tbl`, `account.tbl`, and `transaction.tbl`.

Open the files in a text editor to review their contents.

Upload all three files to HDFS.

Open a Terminal window and start the `Pig` command line interface by running `pig`. 

In the Pig CLI, perform the following tasks:

1. Use the `LOAD` command to load `bank.tbl`, `account.tbl`, and `transaction.tbl` from HDFS into Pig storage.

2. Find the names (`name`) of banks (`bank-type`) whose headquarters are in Japan (`hq-country`).

3. Find the account numbers (`account-number`) opened in any construction (`bank-type`) bank.

4. Find the names of banks (`bank-name`) that do not have any accounts opened.

5. Find the total number of accounts opened in each bank whose headquarters are in Japan (`hq-country`).

When finished, copy everything from your Terminal window (all Pig commands, messages, and query results) and paste it into a text file named `solution3.txt`.
