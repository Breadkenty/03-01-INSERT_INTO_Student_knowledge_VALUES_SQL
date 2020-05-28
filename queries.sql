createdb CompanyDatabase

-- Creates the table "Employee"
CREATE TABLE "Employees"
(
  "Id" SERIAL PRIMARY KEY,
  "FullName" TEXT NOT NULL,
  "PhoneNumber" VARCHAR(15) NOT NULL,
  "PhoneExtension" VARCHAR(3),
  "Salary" DECIMAL,
  "JobPosition" TEXT,
  "IsPartTime" BOOLEAN NOT NULL
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

-- Views the Employee table and all of the columns ** FIXED
SELECT *
FROM "Employees"
WHERE "IsPartTime" = 'false';

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
  "Building" TEXT
);

-- Add a new column to Employee called DepartmentId. This column will reference the department table we made
ALTER TABLE "Employees"
ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments"
("Id");

CREATE TABLE "Products"
(
  "Id" SERIAL PRIMARY KEY,
  "Price" DOUBLE PRECISION,
  "Name" TEXT,
  "Description" TEXT,
  "QuantityInStock" INTEGER
);

CREATE TABLE "Orders"
(
  "Id" SERIAL PRIMARY KEY,
  "OrderNumber" TEXT,
  "DatePlaced" TIMESTAMP,
  "Email" TEXT
);

CREATE TABLE "ProductOrders"
(
  "ID" SERIAL PRIMARY KEY,
  "OrderQuantity" INT,
  "OrderId" INT REFERENCES "Orders" ("Id"),
  "ProductId" INT REFERENCES "Products" ("Id")
);

-- Adds some data to Departments
INSERT INTO "Departments"
  ("Name", "Building")
VALUES
  ('Information Technology', 'South East');

INSERT INTO "Departments"
  ("Name", "Building")
VALUES
  ('Accounting', 'Eckerd Hall');

INSERT INTO "Departments"
  ("Name", "Building")
VALUES
  ('Customer Service', 'Student Center');

INSERT INTO "Departments"
  ("Name", "Building")
VALUES
  ('Development', 'Main');

INSERT INTO "Departments"
  ("Name", "Building")
VALUES
  ('Marketing', 'North');

-- Adds some data to Employees
INSERT INTO "Employees"
  ("FullName", "PhoneNumber", "PhoneExtension", "Salary", "JobPosition", "IsPartTime", "DepartmentId")
VALUES
  ('Tim Smith', '(727) 201-2030', '123', 40000, 'Programmer', 'false', 4);

INSERT INTO "Employees"
  ("FullName", "PhoneNumber", "PhoneExtension", "Salary", "JobPosition", "IsPartTime", "DepartmentId")
VALUES
  ('Barbara Ramsay', '(727) 201-2031', '234', 80000, 'Manager', 'false', 4);

INSERT INTO "Employees"
  ("FullName", "PhoneNumber", "PhoneExtension", "Salary", "JobPosition", "IsPartTime", "DepartmentId")
VALUES
  ('Tom Jones', '(727) 201-2032', '456', 32000, 'Admin', 'true', 5);

-- Assigns some elements in the Employee table to the appropriate DepartmentID
UPDATE "Employees" SET "DepartmentId" = 1 WHERE "Id" IN  (2, 4, 5, 7, 9, 10, 11);
UPDATE "Employees" SET "DepartmentId" = 2 WHERE "Id" IN  (6, 12, 13);
UPDATE "Employees" SET "DepartmentId" = 3 WHERE "Id" IN  (1, 8);

-- View the joined tables
select *
from "Employees" join "Departments" on "Employees"."DepartmentId" = "Departments"."Id";

-- Adds some data to Products
INSERT INTO "Products"
  ("Price", "Name", "Description", "QuantityInStock")
VALUES
  (12.45, 'Widget', 'The Original Widget', 100);

INSERT INTO "Products"
  ("Price", "Name", "Description", "QuantityInStock")
VALUES
  (99.99, 'Flowbee', 'Perfect for haircuts', 3);

-- Add a data to Orders
INSERT INTO "Orders"
  ("OrderNumber", "DatePlaced", "Email")
VALUES
  ('X529', '01-01-2020 16:55:00', 'person@example.com');

-- Adds a Product Order
INSERT INTO "ProductOrders"
  ("OrderQuantity", "OrderId", "ProductId")
VALUES
  (3, 1, 1);

INSERT INTO "ProductOrders"
  ("OrderQuantity", "OrderId", "ProductId")
VALUES
  (2, 1, 2);

-- Show all employees by their DepartmentId
SELECT "Employees"."FullName", "Employees"."Salary", "Employees"."JobPosition", "Employees"."IsPartTime", "Departments"."Name", "Departments"."Building"
FROM "Employees"
  JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id"
WHERE "DepartmentId" = 4;

SELECT "Employees"."FullName", "Employees"."Salary", "Employees"."JobPosition", "Employees"."IsPartTime", "Departments"."Name", "Departments"."Building"
FROM "Employees"
  JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id"
WHERE "DepartmentId" = 5;

-- All employees phone extensions by their given Department Name
SELECT "Employees"."FullName", "Employees"."PhoneExtension", "Departments"."Name", "Departments"."Building"
FROM "Employees"
  JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id"
WHERE "Departments"."Name" = 'Customer Service';

-- Finds all orders that contain the ProductId of 2
SELECT "Orders"."OrderNumber"
FROM "Orders"
  JOIN "ProductOrders" ON "ProductOrders"."OrderId" = "Orders"."Id"
Where "ProductOrders"."ProductId" = 2;

-- OrderId:1 OrderNumber; X529
-- ProducId:2 ProductName: FlowBee
-- Deletes a Product Order where the product is FlowBee and Order Number is X529
DELETE
FROM "ProductOrders"
Where "ProductOrders"."ProductId" = 2
  And "ProductOrders"."OrderId" = 1;


