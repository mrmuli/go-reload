#!/usr/bin/env bash

set -e

psql -v --username postgres <<-EOSQL
    CREATE DATABASE demo;
EOSQL
