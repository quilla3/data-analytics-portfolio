# Querying A Data Cube

## Scope
This project is to perform queries in Hive using different clauses and operators.

## Task Specification
Consider the following logical schema implementing a two-dimensional data cube.
![logical_schema](logical_schema.png)

The original data cube consists of a fact entity that represents the parts included in the orders, a dimension of orders and a dimension of parts supplied by suppliers.

The relational tables `PARTSUPP` and `ORDERS` implement the dimensions of parts supplied by suppliers and orders. A relational table `LINEITEM` implements a fact entity
of a data cube.

Download provided folder `task1`. You should obtain the following files: `dbcreate.hql`, `dbdrop.hql`, `partsupp.tbl`, `lineitem.tbl`, and `orders.tbl`.
* `orders.tbl` contains information about the orders submitted by the customers.
* `lineitem.tbl` contains information about the parts included in the orders.
* `partsupp.tbl` contains information about the parts and suppliers of parts included
in the orders.

Open Terminal window and use `cd` command to navigate to the downloaded folder `task1`.

Start Hive Server 2 in the terminal window (remember to start Hadoop and Metastore
first). Then start `beeline` client.

When ready process the script file `dbcreate.hql` to create the internal relational tables and to load data into the tables. You can use either `beeline` or `Zeppelin`. A script `dbdrop.hql` can be used to drop the tables.

1. Implement the following query using `GROUP BY` clause with `CUBE` operator.

    *For the order clerks `(O_CLERK) Clerk#000000988, Clerk#000000992`, find the total number of ordered parts per customer `(O_CUSTKEY)`, per supplier `(L_SUPPKEY)`, per customer and supplier `(O_CUSTKEY, L_SUPPKEY)`, and the total number of ordered parts.*

2. Implement the following query using `GROUP BY` clause with `ROLLUP` operator.

    *For the parts with the keys `(L_PARTKEY) 18, 19,20` find the largest discount applied `(L_DISCOUNT)` per part key `(L_PARTKEY)` and per part key and supplier key `(L_PARTKEY, L_SUPPKEY)` and the largest discount applied at all.*

3. Implement the following query using `GROUP BY` clause with `GROUPING SETS` operator.

    *Find the smallest price `(L_EXTENDEDPRICE)` per order year `(O_ORDERDATE)`, and order clerk `(O_CLERK)`.*

Implement the following SQL queries as `SELECT` statements using window partitioning technique.

4. *For each part list its key `(PS_PARTKEY)`, all its available quantities `(PS_AVAILQTY)`, the smallest available quantity, and the average available quantity. Consider only the parts with the keys `18`, `19` and `20`.*

5. *For each part list its key `(PS_PARTKEY)` and all its available quantities `(PS_AVAILQTY)` sorted in descending order and a rank (position number in an ascending order) of each quantity. Consider only the parts with the keys `18`, `19` and `20`. Use an analytic function `ROW_NUMBER()`.*

6. *For each part list its key `(PS_PARTKEY)`, its available quantity, and an average available quantity `(PS_AVAILQTY)` of the current quantity and all previous quantities in the ascending order of available quantities. Consider only the parts with the keys `18`, `19` and `20`. Use `ROWS UNBOUNDED PRECEEDING` sub-clause within `PARTITION BY` clause.*

When ready, save your `SELECT` statements in a file `solution1.hql`. Then, process a
script file `solution1.hql` and save the results in a report `solution1.txt`.