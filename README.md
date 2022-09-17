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

1. [Introduction to MYSQL](docs/1-introduction_to_mysql.md)

Copyright and License Information
---------------------------------

See the [LICENSE](./LICENSE) for information on the history of this software, terms & conditions for usage, and a
DISCLAIMER OF ALL WARRANTIES.