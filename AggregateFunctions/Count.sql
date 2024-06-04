USE Northwind

-- SELECT ColName, HamGomNhom(), ...from <Table>
-- SELECT ColName, HamGomNhom(), ...from <Table> WHERE... GROUP BY (GomTheoCumColumnNao)
-- SELECT ColName, HamGomNhom(), ...from <Table> WHERE... GROUP BY (GomTheoCumColumnNao) HAVING

SELECT * from Employees
SELECT COUNT(*) AS [Number of employees] from Employees
SELECT COUNT(*) AS [No employees] from Employees WHERE City = 'London'

SELECT COUNT(City) from Employees
SELECT COUNT(Region) from Employees

SELECT DISTINCT City from Employees
SELECT COUNT(*) from (SELECT DISTINCT City from Employees) AS [No Cities]
--<=> 
SELECT COUNT(DISTINCT City) from Employees

SELECT City, COUNT(City) AS [No employees] from Employees GROUP BY City

SELECT City, COUNT(City) AS [No employees] from Employees GROUP BY City HAVING COUNT(City) >= 2

SELECT City, COUNT(City) from Employees WHERE City IN('London', 'Seattle') GROUP BY City