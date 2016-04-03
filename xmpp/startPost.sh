#! /usr/bin/bash

echo "Initializing the Database"
/usr/bin/initdb /var/lib/pgsql/data/

echo "Setting up data directory and opening ports"
/usr/bin/pg_ctl start -D /var/lib/pgsql/data -s -o "-p 5432" -w -t 300

