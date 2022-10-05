# Database normalization

## What is database normalization?

Database normalization is the process of structuring a relational database in accordance with a series of so-called normal forms in order to **reduce data redundancy** and **improve data integrity**.

## Why normalize database?

* reduce duplicity & redundancy
* divides a larges table into smaller
* good database structure is just a must in long-term projects

## There are 5 normal forms:

### 1NF First Normal Form

🔥 Remove duplicated values 🔥

Before: 

| ID | Phone |
| --- | --- |
| 1 | 7272826385, 9064738238 |

After:

| ID | Phone |
| --- | --- |
| 1 | 7272826385 |
| 2 | 9064738238 |

Further reading in [First Normal Form (1NF)](https://www.javatpoint.com/dbms-first-normal-form).

### 2NF Second Normal Form

🔥 Non-key attributes depend only on the primary key 🔥

Further reading in [Second Normal Form (2NF)](https://www.javatpoint.com/dbms-second-normal-form).

### 3NF Third Normal Form

🔥 Remove transitive partial dependency 🔥 

Further reading in [Third Normal Form (3NF)](https://www.javatpoint.com/dbms-third-normal-form).

### 4NF Fourth normal form

🔥 No multi-valued dependency (create UNIQUE keys) 🔥

Further reading in [Fourth normal form (4NF)](https://www.javatpoint.com/dbms-forth-normal-form).

## 5NF Fifth normal form

🔥 Split database into as many tables as possible in order to avoid redundancy 🔥 

Further reading in [Introduction of 4th and 5th Normal form in DBMS](https://www.geeksforgeeks.org/introduction-of-4th-and-5th-normal-form-in-dbms/).

## Common Rules

To sum up, use this rules to design tables:

* every table should have primary key
* primary key should be [UNIQUE](https://vertabelo.com/blog/database-constraints-types/#uniquekey)
* think about [NULL](https://www.tutorialspoint.com/sql/sql-null-values.htm) or [NOT NULL](https://vertabelo.com/blog/database-constraints-types/#notnull) columns 
(with or without [DEFAULT](https://vertabelo.com/blog/database-constraints-types/#default) values) when creating new columns
* create relations with [FOREIGN keys](https://vertabelo.com/blog/database-constraints-types/#foreignkey)
* when designing table think about duplicity. Ask yourself: `is possible to create two rows with duplicated data?` If answer is yes ➡ split table into more tables.
* if needed, create [CHECK](https://vertabelo.com/blog/database-constraints-types/#check) to validate data
* to speed up table queries (SELECT + JOINs), create [INDEXes](https://www.sqlshack.com/sql-index-overview-and-strategy/)