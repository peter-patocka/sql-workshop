# Triggers, Views, Procedures

## Trigger

A trigger is a stored program invoked automatically in response to an event such as insert, update, or delete that occurs in the associated table. For example, you can define a trigger that is invoked automatically before a new row is inserted into a table.

MySQL supports triggers that are invoked in response to the `INSERT`, `UPDATE` or `DELETE` event.

Further reading in:
* [What are MySQL triggers and how to use them?](https://www.siteground.com/kb/mysql-triggers-use/).
* [MySQL Triggers](https://www.mysqltutorial.org/mysql-triggers/)

Example of Trigger in MySQL:
```mysql
CREATE TABLE account (acct_num INT, amount DECIMAL(10,2));

CREATE TRIGGER ins_sum BEFORE INSERT ON account
       FOR EACH ROW SET @sum = @sum + NEW.amount;
```

## View

Views in SQL are kind of virtual tables. It's actually stored SELECT command that could be executed by calling VIEW.

Further reading in:
* [SQL Views (GeeksForGeeks)](https://www.geeksforgeeks.org/sql-views/).
* [SQL Views (w3schools)](https://www.w3schools.com/sql/sql_view.asp)

Example of View in MySQL:
```mysql
CREATE VIEW transactions AS
    SELECT 
        id_number,
        name,
        transaction_date
    FROM
        customers;
```

We can execute a statement that selects all the fields in this view:
```mysql
SELECT * FROM transactions;
```

## Procedure

A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.

Example of creating new procedure in Postgres:
```postgresql
create or replace procedure transfer(
   sender int,
   receiver int, 
   amount dec
)
language plpgsql    
as $$
begin
    -- subtracting the amount from the sender's account 
    update accounts 
    set balance = balance - amount 
    where id = sender;

    -- adding the amount to the receiver's account
    update accounts 
    set balance = balance + amount 
    where id = receiver;

    commit;
end;$$
```

To call a stored procedure, you use the CALL statement as follows:

```postgresql
call transfer(1,2,1000);
```

Further reading in:
* [PostgreSQL CREATE PROCEDURE](https://www.postgresqltutorial.com/postgresql-plpgsql/postgresql-create-procedure/).
* [What is a Stored Procedure? (w3schools)](https://www.w3schools.com/sql/sql_stored_procedures.asp)
* [SQL Server stored procedures for beginners](https://www.sqlshack.com/sql-server-stored-procedures-for-beginners/)