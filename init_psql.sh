#!/bin/bash

sudo postgresql-setup initdb
sudo systemctl start postgresql

sudo systemctl enable postgresql

sudo -u postgres createuser --interactive
sudo -u postgres createdb api