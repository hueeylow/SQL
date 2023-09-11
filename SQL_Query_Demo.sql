/*SQL Query Scripting Demo*/

-- Create Database before import raw data
CREATE DATABASE HRDataDB

-- Imported 2 data tables, namely HRData and EmpSalary
SELECT *
FROM HRDataDB.dbo.HRData

SELECT *
FROM HRDataDB.dbo.EmpSalary

-- Query 1 Statement: Show total no. of employees whose number of working years is more than 10 years, by department.
SELECT Department, Count(EmployeeNumber) as Total_Emp
FROM HRDataDB.dbo.HRData
WHERE YearsAtCompany > 10
GROUP BY Department

-- Query 2 Statement: Show list of employee ID by department, performance rating and job role, whose years of service with company is 10/15/20 years.
SELECT EmployeeNumber, Department, PerformanceRating, JobRole, YearsAtCompany
FROM HRDataDB.dbo.HRData
WHERE YearsAtCompany IN (10,15,20)
ORDER by YearsAtCompany

--Query 3 Statement: Show list of employee ID by monthly income, years since last promotion, years of service, department, job title whose years of service is at least 20 years.
SELECT EmployeeNumber, MonthlyIncome, YearsSinceLastPromotion, YearsAtCompany, Department, JobRole
FROM HRDataDB.dbo.HRData as a
	FULL JOIN HRDataDB.dbo.EmpSalary as b
		ON a.EmployeeNumber = b.EmpID
WHERE YearsAtCompany > = 20

-- Query 4 Statement: Show list of employees ID, annual base salary, new base salary based on percent salary hike, job title and department, whose employees’ job level is 5.
SELECT EmployeeNumber, MonthlyIncome*12 as AnnualBaseSalary, (MonthlyIncome*(PercentSalaryHike/100))*12 as NewAnnualBaseSalary, PercentSalaryHike, JobRole, Department
FROM HRDataDB.dbo.HRData as a
	FULL JOIN HRDataDB.dbo.EmpSalary as b
		ON a.EmployeeNumber = b.EmpID
WHERE JobLevel IN(5)

-- Query 5 Statement: Show stats of Business Travel where Monthly Income is at least or greater than $10,000.
SELECT BusinessTravel, Count(BusinessTravel) as Total
FROM HRDataDB.dbo.HRData as a
	FULL JOIN HRDataDB.dbo.EmpSalary as b
		ON a.EmployeeNumber = b.EmpID
WHERE MonthlyIncome >=10000
GROUP BY BusinessTravel


-- Query 6 Statement: Show Total no. of Employees, Job Role where monthly income is greater than $5,000.
SELECT JobRole, COUNT(EmployeeNumber) as Total_Employees
FROM HRDataDB.dbo.HRData as a
	FULL JOIN HRDataDB.dbo.EmpSalary as b
		ON a.EmployeeNumber = b.EmpID
WHERE MonthlyIncome >5000
GROUP BY JobRole


-- Query 7 Statement: Show top 5 Employee ID by monthly income, job role, department where monthly income is less than $5,000 and training times last year is at least 6 years
SELECT Top(5) EmployeeNumber,  MonthlyIncome, JobRole, Department
FROM HRDataDB.dbo.HRData as a
	FULL JOIN HRDataDB.dbo.EmpSalary as b
		ON a.EmployeeNumber = b.EmpID
WHERE MonthlyIncome <5000
AND TrainingTimesLastYear > = 6
ORDER BY MonthlyIncome DESC
