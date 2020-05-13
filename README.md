
# Helpful Postgres Commands

## Terminal Commands
Some commands you can access in the terminal if bash is more of your cup of tea.

```
sudo -u postgres createuser --interactive       # Allows you to create a new user
sudo -u postgres createdb api                   # Creates a database with your current user

psql -d <name of database> -U <name of user>    # Allows you do start a psql connection to a database with specific user
psql <database>                                 # Allows you to login with current user in config to <database>
```

Go to /var/lib/pgsql/data/pg_hba.conf

```
# TYPE  DATABASE        USER            ADDRESS                 METHOD

# "local" is for Unix domain socket connections only
local   all             all                                     peer
# IPv4 local connections:
#host    all             all             127.0.0.1/32            ident
host    all             all             127.0.0.1/32            md5
# IPv6 local connections:
#host    all             all             ::1/128                 ident
host    all             all             ::1/128                 trust
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
