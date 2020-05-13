
# Helpful Postgres Commands

## Terminal Commands
Some commands you can access in the terminal if bash is more of your cup of tea.

```
sudo -u postgres createuser --interactive       # Allows you to create a new user
sudo -u postgres createdb api                   # Creates a database with your current user

psql -d <name of database> -U <name of user>    # Allows you do start a psql connection to a database with specific user
psql <database>                                 # Allows you to login with current user in config to <database>
```

## Inside Postgres Connection
Some commands to reference when inside the psql connect.

**Remeber to add ';' to the end of your commands or they will not register!**

### See your connection info
```
postgres=# \conninfo
```

### List the databases
```
postgres=# \list
```

### List all tables in current database
```
postgres=# \dt
```

### List all users
```
postgres=# \du
```

### Connect to a new databse
```
postgres=# \c <name of database>
```

### Exit psql connection
```
postgres=# \q           OR            CNTRL+D
```