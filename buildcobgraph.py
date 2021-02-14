"""
PostgreSQL database related functions. 
"""

import os
import sys
from io import StringIO
from logger import logger
from dotenv import load_dotenv
import pandas as pd
import psycopg2
from psycopg2 import sql
import psycopg2.extras as extras
import meta_data as md
import string

load_dotenv()
local_dev = os.getenv("LOCAL_DEV") == "true"


def get_database_connection(local_dev=True):
    """Connection to PSQL DB."""
    if local_dev:
        conn = psycopg2.connect(os.getenv("LOCAL_DATABASE_URL"))
    else:
        conn = psycopg2.connect(os.getenv("DATABASE_URL"))
    return conn

conn = get_database_connection(local_dev=local_dev)
cursor = conn.cursor()

"""
cursor.execute("SELECT filing_num FROM master LIMIT 25;")
qs = cursor.fetchall()
print(type(qs))
"""

cursor.execute("SELECT * FROM charter_officer_business;")
qs = cursor.fetchall()

cursor.execute("SELECT * FROM master;")
ps = cursor.fetchall()

fn_dict = {}

for i in range(len(ps)):
    fn_dict[ps[i][4]] = ps[i][0]

"""
    for p in ps:

        f1 = q[0]
        f2 = p[0]
        cursor.execute("INSERT INTO cob_edges VALUES ("+
            f1+","+f2+");")
        pass
"""

for q in qs:
    name = q[11]
    if(name in fn_dict.keys()):
        #print("hello world")
        f1 = q[0]
        f2 = fn_dict[name]
        cursor.execute("INSERT INTO cob_edges (node_i,node_t) VALUES ('"+
            f1+"','"+f2+"');")

conn.commit()
cursor.close()
conn.close()

