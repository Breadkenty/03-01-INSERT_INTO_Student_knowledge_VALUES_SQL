createdb CompanyDatabase

-- Creates the table "Employee"
CREATE TABLE "Employees"
(
  "Id" SERIAL PRIMARY KEY
  "FullName" TEXT NOT NULL,
  "PhoneNumber" VARCHAR(15) NOT NULL,
  "PhoneExtension" varChar(3),
  "Salary" DECIMAL,
  "JobPosition" TEXT,
  "IsPartTime" BOOLEAN NOT NULL,
);

-- Inserts some data to work with
INSERT INTO "Employees"
  ("FullName", "PhoneNumber", "PhoneExtension", "Salary", "JobPosition", "IsPartTime")
VALUES
  ('Kento Kawakami', '(813) 334-6678', '246', 2500.00, 'Enrollment Specialist', 'false');

INSERT INTO "Employees"
  ("FullName", "PhoneNumber", "Salary", "JobPosition", "IsPartTime")
VALUES
  ('Jason Perry', '(727) 201-2012', 10000.00, 'Chief Executive Officer', 'false');

INSERT INTO "Employees"
  ("FullName", "PhoneNumber", "Salary", "JobPosition", "IsPartTime")
VALUES
  ('Katherine Trammell', '(727) 201-2013', 5833.00, 'Campus Director', 'false');

INSERT INTO "Employees"
  ("FullName", "PhoneNumber", "PhoneExtension", "Salary", "JobPosition", "IsPartTime")
VALUES
  ('Gavin Stark', '(727) 201-2014', '12', 8333.00, 'Core Instructor', 'false');

INSERT INTO "Employees"
  ("FullName", "PhoneNumber", "Salary", "JobPosition", "IsPartTime")
VALUES
  ('Mark Dewey', '(727) 201-2015', 7500.00, 'Core Instructor', 'false');

INSERT INTO "Employees"
  ("FullName", "PhoneNumber", "PhoneExtension", "Salary", "JobPosition", "IsPartTime")
VALUES
  ('Lauren Mabra', '(727) 201-2016', '334', 1666.00, 'Marketing Coordinator', 'true');

INSERT INTO "Employees"
  ("FullName", "PhoneNumber", "Salary", "JobPosition", "IsPartTime")
VALUES
  ('Jordan Bryan', '(727) 201-2017', 2083.00, 'Teachers Assistant', 'true');

INSERT INTO "Employees"
  ("FullName", "PhoneNumber", "Salary", "JobPosition", "IsPartTime")
VALUES
  ('Holly Valenti', '(727) 201-2018', 2500.00, 'Enrollment Specialist', 'false');

INSERT INTO "Employees"
  ("FullName", "PhoneNumber", "PhoneExtension", "Salary", "JobPosition", "IsPartTime")
VALUES
  ('Lazy Larry', '(727) 201-2019', '144', 1250.00, 'Lazt Bum', 'true');

INSERT INTO "Employees"
  ("FullName", "PhoneNumber", "Salary", "JobPosition", "IsPartTime")
VALUES
  ('Carla Joseph', '(727) 201-2020', 2083.00, 'Cook', 'true');

INSERT INTO "Employees"
  ("FullName", "PhoneNumber", "PhoneExtension", "Salary", "JobPosition", "IsPartTime")
VALUES
  ('Abtahee Ali', '(727) 201-2021', '312', 5833.00, 'Software Developer', 'false');

INSERT INTO "Employees"
  ("FullName", "PhoneNumber", "Salary", "JobPosition", "IsPartTime")
VALUES
  ('Cody Banks', '(727) 201-2022', 5833.00, 'Software Developer', 'true');

-- Views the Employee table and all of the columns
SELECT *
FROM "Employees";

-- Some explorer mode stuff to navigate around the data
SELECT "FullName", "PhoneExtension"
FROM "Employees";

INSERT INTO "Employees"
  ("FullName", "PhoneNumber", "Salary", "JobPosition", "IsPartTime")
Values
  ('Mr.Poorly-Paid Part-Time-Software-Developer', '(727)201-2023', 450.00, 'Software Developer', 'true' );

UPDATE "Employees"
SET "Salary" = 500.00
WHERE "JobPosition" = 'Cook';

DELETE FROM "Employees"
WHERE "FullName" = 'Lazy Larry';

-- Adds a new column "ParkingSpot"
ALTER TABLE "Employees"
ADD COLUMN "ParkingSpot" VARCHAR
(10);

-- Creates a new table "Departments"
CREATE TABLE "Departments"
(
  "Id" SERIAL PRIMARY KEY,
  "Name" TEXT NOT NULL,
  "BuildingNumber" INT
);

-- Adds some data to work with
INSERT INTO "Departments"
  ("Name", "BuildingNumber")
VALUES
  ('Information Technology', '51');

INSERT INTO "Departments"
  ("Name", "BuildingNumber")
VALUES
  ('Marketing', '55');

INSERT INTO "Departments"
  ("Name", "BuildingNumber")
VALUES
  ('Customer Service', '58');

-- Add a new column to Employee called DepartmentId. This column will reference the department table we made
ALTER TABLE "Employees"
ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments"
("Id");

-- Assigns some elements in the Employee table to the appropriate DepartmentID
UPDATE "Employees" SET "DepartmentId" = 1 WHERE "Id" IN  (2, 4, 5, 7, 9, 10, 11);
UPDATE "Employees" SET "DepartmentId" = 2 WHERE "Id" IN  (6, 12, 13);
UPDATE "Employees" SET "DepartmentId" = 3 WHERE "Id" IN  (1, 8);

-- View the joined tables
select *
from "Employees" join "Departments" on "Employees"."DepartmentId" = "Departments"."Id"; 






