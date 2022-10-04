# Introduction to MySQL

Connect to phpmyadmin via
* localhost [http://localhost:8000](http://localhost:8000)
* live version [http://5trzalka.piixon.sk/phpmyadmin/](http://5trzalka.piixon.sk/phpmyadmin/)

Example:
```
Luke Skywalker kúpil 04.10.2022 modrý svetelný meč za 1200 EUR
```
### How to store this example to database:

| id  | first_name | last_name | product_name    | price | date       |
| --- | ---        | ---       | ---             | ---   | ---        |
| 1   | Luke       | Skywalker | Blue Lightsaber | 1200  | 04.10.2022 |

### How is this example actually stored (in normalized form) in database:

#### Table `users`:
| id  | first_name | last_name |
| --- | ---        | ---       | 
| 1   | Luke       | Skywalker | 

#### Table `products`:
| id  | name            | regular_price |
| --- | ---             | ---           |
| 1   | Blue Lightsaber | 1200          |

#### Table `sales_order`:
| id  | user_id | total |
| --- | ---     | ---   |
| 1   | 1       | 1200  |

#### Table `order_products`:
| id  | order_id | product_id | price |
| --- | ---      | ---        | ---   |
| 1   | 1        | 1          | 1200  |

Another examples could be:
```
Darth Vader s emailovou adresou darth.vader@gmail.com kúpil 03.10.2022 červený svetelný meč za zľavnenú sumu 1500 EUR
Obi-wan Kenobi bol povýšený na Jedi Mastera
```

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

Example:
```SQL
create table customers (id INTEGER not null, email VARCHAR(255), active BOOLEAN default true);
```

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

## Exercises

1. `SELECT` all roles.
2. Create 3 new users in one `INSERT` command.
3. `SELECT` 2 users their first name starts with letter 'L'.
4. Create new table `user_address` with cardinality 1:1 to `users`. Columns are: street, city, state, 
5. Delete all users with Gmail account (their email ends with `@gmail.com`).
6. Set all users active (`UPDATE`).
