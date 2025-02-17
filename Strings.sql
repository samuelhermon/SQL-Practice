## -- String Functions --

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2
; 

SELECT first_name, upper(first_name)
FROM employee_demographics
ORDER BY 2
; 

# -- Trim --
SELECT TRIM('             sky        ')
;

SELECT LTRIM('             sky        ')
;

SELECT RTRIM('             sky        ')
;

SELECT first_name, 
LEFT(first_name, 4), 
RIGHT(first_name, 4),
substr(first_name,3,2),
birth_date,
substr(birth_date,6,2) AS birth_month
FROM employee_demographics
;

SELECT first_name, REPLACE(first_name, 'a','z')
FROM employee_demographics
;

SELECT LOCATE('x','Alexander');

SELECT first_name, LOCATE('An',first_name)
FROM employee_demographics
;

SELECT first_name, last_name,
CONCAT(first_name, ' ',last_name) AS full_name
FROM employee_demographics
;


