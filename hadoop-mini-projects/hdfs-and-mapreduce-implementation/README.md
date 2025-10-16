# Implementation of HDFS and MapReduce Applications

## Scope
This assignment includes the tasks related to implementation of HDFS applications and to implementation of MapReduce applications. Task 1 and 2 are to use command line or Python interface to interact with HDFS, while task 3 and 4 require implementation of Hadoop streaming applications in Python.

## Task Specification
### Task 1: Command Line Interface to HDFS

Use a text editor to create two text files that consists of minimum 3 lines and no more than 10 lines. The files must contain at least the following content:
* Line 1: name of file
* Line 2: your full name and your student number
* Line 3: day and time of a laboratory class you are enrolled in

You can determine your own file names.

1. Open the Terminal and go to the folder where your text files are saved.
Use the `cat` command to display the contents of both text files in the Terminal window.

Use a command line interface to HDFS to perform the following operations.

2. In HDFS, create two new folders inside your home directory. You can choose any names for these folders.

3. Upload the files created in step 1 to the folders created in step 2. Each file must be located in a different folder.

4. List the contents of the folders created in a step 2.

5. List the contents of the files uploaded to HDFS.

6. Merge the two files in HDFS into one single file stored in your HDFS home directory. You can choose the order of merging and the name of the merged file.

7. List the contents of the file merged in HDFS.

8. Download the merged file into a local file system.

9. Remove all three files created in HDFS.

10. Remove the folders created in a step 2.

Copy everything that appeared in your Terminal window (commands and results) and paste it into a text file called `solution1.txt`.


### Task 2: Python Interface to HDFS

Implement the steps 1, 2 and 3 from Task 1. You don’t need to submit a report for these steps.

Using the `Snakebite` client library in Python, create a program that does the following:
(1) List the names of files and folders included in a home folder in HDFS.
(2) List the contents of the folders implemented in a step 2 of Task 1.
(3) List the contents of the files included in the folders in step 3 of Task 1.

Once your Python program is ready:
* Open a Terminal window and go to the folder where your Python file is saved.
* Use the `cat` command to display your Python code in the Terminal.
* Then run your Python program in the Terminal.
* Finally, copy everything from the Terminal window (commands and output) and paste it into a file named `solution2.txt`.


### Task 3: MapReduce Streaming with Python (1)

Write a Python Hadoop Streaming application that performs the same operation as the following SQL query:
```
SELECT item-name, price-per-unit * total-units
FROM sales.txt
WHERE price-per-unit * total-units > given-value;
```

Each line in the input file `sales.txt` has the format:

`item-name price-per-unit total-units`

Example:
```
bolt 2 25
washer 3 8
screw 7 20
nail 5 10
screw 7 2
bolt 2 20
bolt 2 30
drill 10 5
washer 3 8
```

You can create your own `sales.txt` file as long as it follows this format.

Your program should take a parameter (*given-value*) from the command line.
The program should then process the input data accordingly using Hadoop Streaming.

Save your solution in a file `solution3.py`.

**Steps to Perform**
1. Open a Terminal window and go to the folder where `sales.txt` is stored.

2. Use the `cat` command to display the contents of `sales.txt`.

3. Upload `sales.txt` to HDFS (you can choose the HDFS directory).

4. Go to the folder where your Python script `solution3.py` is located.

5. Use the `cat` command to show the contents of `solution3.py` in the Terminal.

6. Use the `chmod` command to give the user execution permission for `solution3.py`.

7. Run your Python program using the Hadoop Streaming feature.

8. Display the results that your program writes to HDFS.

Copy everything from your Terminal window (commands and results) and paste it into a file named `solution3.txt`.


### Task 4: MapReduce Streaming with Python (2)

Create a Hadoop Streaming application in Python that performs the same operation as this SQL query:
```
SELECT item-name, SUM(price-per-unit * total-units)
FROM sales.txt
GROUP BY item-name
```

Each line in the input file `sales.txt` has the format:

`item-name price-per-unit total-units`

Example:
```
bolt 2 25
washer 3 8
screw 7 20
nail 5 10
screw 7 2
bolt 2 20
bolt 2 30
drill 10 5
washer 3 8
```

You can create your own `sales.txt` file as long as it follows this format.

Save your solution in the files `mapper4.py` and `reducer4.py`.

**Steps to Perform**

1. Open a Terminal window and go to the folder where `sales.txt` is stored.

2. Use the `cat` command to show the contents of `sales.txt` in the Terminal.

3. Upload the file `sales.txt` to HDFS (you can choose any folder location).

4. Go to the folder where your `mapper4.py` and `reducer4.py` scripts are located.

5. Use the `cat` command to display both Python files in the Terminal.

6. Use the `chmod` command to give execution permission to `mapper4.py` and `reducer4.py`.

7. Run your Hadoop Streaming job, using your two Python scripts as the mapper and reducer.

8. Show the results that your program writes to HDFS.

Finally, copy everything from your Terminal window (commands and results) and paste it into a file called `solution4.txt`.