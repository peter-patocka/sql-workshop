# SQL workshop

All lectures are based on [e-commerce-db database schema for e-commerce (webstores) sites](https://github.com/ramortegui/e-commerce-db)

## Diagram

![ECommerceDB.png](https://github.com/ramortegui/e-commerce-db/blob/master/ECommerceDB.png)

## Html info

[ecommerce-db.html](http://htmlpreview.github.io/?https://github.com/ramortegui/e-commerce-db/blob/master/export/ecommerce-db.html)

## Start MYSQL

To start MYSQL database server in docker container, use:

```
./run.sh up
```

All `./db/updates/*.sql` files are applied to initial database `dbname` (defined by environment variable `MYSQL_DATABASE`).

To edit data, use [phpmyadmin](http://localhost:8000/) with user name `username` and password `password`.

## Stop MYSQL

To destroy all running docker containers use: 

```
./run.sh down
```

## Lectures

1. [Introduction to MYSQL](./docs/1-introduction_to_mysql.md)
2. [Entity–relationship model](./docs/2-entity_relationship_model.md)
3. [Database normalization](docs/3-database-normalization.md)
4. [JOINs](docs/4-join.md)
5. [Triggers, Views, Procedures](docs/5-triggers-views-procedures.md)

---

Other topics (not covered yet):
* [Database Testing](https://www.javatpoint.com/database-testing)
* [NoSQL Databases](https://www.couchbase.com/resources/why-nosql)
* Database servers differences
    * [PostgreSQL vs. MySQL](https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-vs-mysql/)
    * [Oracle vs. PostgreSQL](https://hevodata.com/learn/postgresql-vs-oracle/#functionality)
    * [Comparison MySQL vs. Oracle vs. PostgreSQL](https://db-engines.com/en/system/MySQL%3BOracle%3BPostgreSQL)
* [Database Modeling in UML](https://sparxsystems.com/resources/tutorials/uml/datamodel.html)
* [Database Migration - What It Is and How to Do It](https://www.cloudbees.com/blog/database-migration)

Copyright and License Information
---------------------------------

See the [LICENSE](./LICENSE) for information on the history of this software, terms & conditions for usage, and a
DISCLAIMER OF ALL WARRANTIES.