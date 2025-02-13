## -- JOINS --

SELECT * 
FROM employee_demographics
;

SELECT *
FROM employee_salary
;

## -- Inner Join --
SELECT dem.employee_id, age. occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

## -- Outer Join --
SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

## -- Self Join --

SELECT EMP1.employee_id AS EMP_santa,
EMP1.first_name AS first_name_santa,
EMP1.last_name AS last_name_santa,
EMP2.employee_id AS EMP_name,
EMP2.first_name AS emp_first_name,
EMP2.last_name AS emp_last_name

FROM employee_salary as EMP1
JOIN employee_salary as EMP2
	ON EMP1.employee_id + 1 = EMP2.employee_id
;


## -- Joining Multiple Tables Together --
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id
;

SELECT *
FROM parks_departments
;