# Wedding page

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