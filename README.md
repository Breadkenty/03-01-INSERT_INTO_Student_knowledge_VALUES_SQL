# 03-01 INSERT INTO Student (knowledge) VALUES ('SQL')

# Assignment Overview:

Every application uses data in some way. In many of our applications we will be
storing information in a database. In this assignment we will be practicing
using SQL databases.

## Objectives

- Create a database
- Write some queries to use the database

## Setup

1. Fork [this repository](https://github.com/suncoast-devs/sql-intro) to your
   own account.
2. Change into your project's directory.
3. Clone your repository:
   `git clone https://github.com/YOUR_NAME_HERE/sql-intro`
4. Change into your newly cloned project's directory: `cd sql-intro`
5. `code .`
6. All your SQL queries should be placed inside the `queries.sql` file.

### Explorer Mode

- [x] Create a database: `CompanyDatabase`.
- [x] Create a table: `Employees` with the following columns. Use your best judgment for data types. Copy the query you used to create this table and paste it into `queries.sql`.

  - `FullName`
  - `Salary`
  - `JobPosition`
  - `PhoneExtension`
  - `IsPartTime`

- [x] Create a few employees. Review the requirements below to see some examples of the values you may need. For instance, you may need employees of certain job positions, employees with certain names, etc. Add enough data (maybe 10 rows) such that you can validate your queries. _Copy the queries you used to create your data into `queries.sql`_
- [x] Create queries that can do the following. **Each query** should be attempted in your database. When it works, copy the query to `queries.sql`. You may optionally copy and paste the query output to your queries.sql if you wish.

  - [x] Select all columns for all employees.
  - [x] Select only the full names and phone extensions for only full-time employees.
  - [x] Insert a new part-time employee, as a software developer, with a salary of 450. Make up values for the other columns.
  - [x] Update all employees that are cooks to have a salary of 500.
  - [x] Delete all employees that have the full name of "Lazy Larry".
  - [x] Add a column to the table: `ParkingSpot` as textual information that can store _up to_ 10 characters.

### Adventure Mode

- [x] Add queries to `queries.sql` that show how to:
  - [x] Recreate your database and tables and use `NOT NULL` for columns you feel are required.
  - [x] Add a primary key named `Id` to your table.

### Epic Mode

- [x] Add queries to `queries.sql` that show how to:
  - [x] Create a second table: `Departments` that has these columns:
    - `Name`
    - `BuildingNumber`
  - [x] Create a column on the `Employees` table named `DepartmentId` to relate
        to the `Departments` table. Make it a foreign key.
  - [x] Insert employees and related departments.

## Additional Resources

- [PostgreSQL Documentation](https://www.postgresql.org/docs/)
