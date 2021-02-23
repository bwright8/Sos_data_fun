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
import nameparser
import dedupe

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

