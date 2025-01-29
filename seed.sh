#!/bin/bash

# Define the MongoDB database name
DB_NAME="mydatabase"

# Define the collection and data
COLLECTION="users"

# Insert multiple records into the database
mongosh <<EOF
use $DB_NAME
db.$COLLECTION.insertMany([
    { "name": "Alice", "age": 25, "email": "alice@example.com" },
    { "name": "Bob", "age": 30, "email": "bob@example.com" },
    { "name": "Charlie", "age": 28, "email": "charlie@example.com" },
    { "name": "David", "age": 35, "email": "david@example.com" },
    { "name": "Emma", "age": 22, "email": "emma@example.com" },
    { "name": "Frank", "age": 40, "email": "frank@example.com" },
    { "name": "Grace", "age": 27, "email": "grace@example.com" },
    { "name": "Hannah", "age": 29, "email": "hannah@example.com" },
    { "name": "Ian", "age": 33, "email": "ian@example.com" },
    { "name": "Jack", "age": 31, "email": "jack@example.com" }
])
EOF
