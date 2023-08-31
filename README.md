# Library Management System

## Description
The Library Management System project is a simple SQL-based application that enables you to manage books, authors, and user interactions within a library environment.

## Table of Contents
- [Introduction](#introduction)
- [Database Design](#database-design)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setting Up the Database](#setting-up-the-database)
  - [Running SQL Queries](#running-sql-queries)
- [Features](#features)
- [Examples](#examples)
- [Contributing](#contributing)
- [License](#license)

## Introduction
This project is designed to showcase the implementation of a Library Management System using SQL. It allows you to perform various operations such as adding, updating, and deleting books, managing authors, checking out and returning books, and querying the database for information.

## Database Design
The system utilizes three main tables for data management:

- `Authors` Table:
  - `author_id` (Primary Key)
  - `author_name`

- `Books` Table:
  - `book_id` (Primary Key)
  - `title`
  - `author_id` (Foreign Key references Authors)
  - `genre`
  - `is_available` (Boolean)

- `Transactions` Table:
  - `transaction_id` (Primary Key)
  - `book_id` (Foreign Key references Books)
  - `user_id`
  - `checkout_date`
  - `return_date`

## Getting Started

### Prerequisites
- MySQL Server (or any other SQL database management system)
- SQL Client (e.g., MySQL Workbench, command-line interface)

### Setting Up the Database
1. Create a new database using your preferred SQL client.
2. Run the SQL statements provided in the "Database Design" section to create the necessary tables.
3. Insert sample data using the provided INSERT statements.
4. Ensure your database connection settings are correctly configured in your SQL client.

### Running SQL Queries
1. Open your SQL client and connect to the database.
2. Use separate query tabs to run the SQL queries provided in the project steps.
3. Each step of the project (e.g., CRUD operations, transactions, queries) should be executed in its own query tab.
4. Refer to the project documentation for each step to understand the purpose of the queries.

## Features
- Add, update, and delete books.
- Manage authors and their information.
- Perform book checkout and return transactions.
- List all available books.
- Identify overdue books.
- Search for books by title, author, or genre.

## Examples
Here are some examples of SQL queries you can execute:

- List all available books:
  ```sql
  SELECT b.title, a.author_name
  FROM Books b
  JOIN Authors a ON b.author_id = a.author_id
  WHERE b.is_available = true;
