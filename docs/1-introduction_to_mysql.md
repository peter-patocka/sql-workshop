# Introduction to MySQL

Connect to phpmyadmin
    * localhost [http://5trzalka.piixon.sk/phpmyadmin/](http://5trzalka.piixon.sk/phpmyadmin/)
    * live version [http://5trzalka.piixon.sk/phpmyadmin/](http://5trzalka.piixon.sk/phpmyadmin/)

## Create USER

```SQL
CREATE USER 'pmauser'@'%' IDENTIFIED BY 'password_here';

GRANT ALL PRIVILEGES ON *.* TO 'pmauser'@'%' WITH GRANT OPTION;
```

## Create DATABASE

```SQL
CREATE DATABASE test;

USE DATABASE test;
```

## Create TABLE

* [CREATE TABLE](https://www.w3schools.com/mysql/mysql_create_table.asp)
* [ALTER TABLE](https://www.w3schools.com/mysql/mysql_alter.asp)
* [Constraints](https://www.w3schools.com/mysql/mysql_constraints.asp)
* [PRIMARY KEY](https://www.w3schools.com/mysql/mysql_primarykey.asp)
* [FOREIGN KEY](https://www.w3schools.com/mysql/mysql_foreignkey.asp)

### Data types

* `BOOLEAN` - true or false
* `INT` - A medium integer. Range is from -2147483648 to 2147483647.
* `DECIMAL(20,2)` - A real value. The total number of digits is specified in first parameter. The number of digits after the decimal point is specified in the second parameter.
* `VARCHAR(255)` -  A VARIABLE length string. Parameter 255 represents the maximum column length in characters
* `TEXT` - Holds a string with a maximum length of 65,535 bytes
* `DATE` - A date. Format: YYYY-MM-DD. Example: '1970-01-01'.
* `DATETIME` - A date and time combination. Format: YYYY-MM-DD hh:mm:ss. Example: '1970-01-01 00:00:00'.
* `TIMESTAMP` - A timestamp. Format: 'YYYY-MM-DD hh:mm:ss'. Example: '1970-01-01 00:00:00'.

More in [MySQL Data Types documentation](https://www.w3schools.com/mysql/mysql_datatypes.asp).

Example:
```SQL
create table customers (id INTEGER not null, email VARCHAR(255), active BOOLEAN default true);
```

## CRUD - Create, read, update and delete

* To create data we use `INSERT INTO` command
```sql
INSERT INTO customers (id, email, active) VALUES (1, 'test@gmail.com', TRUE);
```
* To read data we use `SELECT * FROM` command
```sql
SELECT * FROM customers WHERE id > 0 AND active IN(TRUE, FALSE);
```
* To update data we use `UPDATE` command
```sql
UPDATE customers SET active = FALSE WHERE id = 1;
```
* To delete data we use `DELETE FROM` command
```sql
DELETE FROM customers WHERE id = 1;
```

## JOIN

Here are the different types of the JOINs in SQL:

* (INNER) JOIN: Returns records that have matching values in both tables
* LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
* RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
* FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table

![INNER JOIN](https://www.w3schools.com/sql/img_innerjoin.gif)
![LEFT JOIN](https://www.w3schools.com/sql/img_leftjoin.gif)
![RIGHT JOIN](https://www.w3schools.com/sql/img_rightjoin.gif)
![FULL JOIN](https://www.w3schools.com/sql/img_fulljoin.gif)

### INNER JOIN

Documentation in [SQL INNER JOIN Keyword](https://www.w3schools.com/sql/sql_join_inner.asp).

### LEFT JOIN

Documentation in [SQL LEFT JOIN Keyword](https://www.w3schools.com/sql/sql_join_left.asp).