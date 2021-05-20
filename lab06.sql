-- Zadanie 6.1
SELECT job_id, min_salary
FROM hr.jobs
WHERE min_salary < 3000
UNION
SELECT job_id, min_salary
FROM hr.jobs
WHERE min_salary > 12000
ORDER BY min_salary;

-- Zadanie 6.2
SELECT job_id, min_salary
FROM hr.jobs
WHERE min_salary BETWEEN 2000 AND 5000
INTERSECT
SELECT job_id, min_salary
FROM hr.jobs
WHERE job_id LIKE '%ACCOUNT'
ORDER BY min_salary DESC;

-- Zadanie 6.3
SELECT employee_id, first_name, last_name, salary
FROM hr.employees
WHERE employee_id > 150
MINUS
SELECT employee_id, first_name, last_name, salary
FROM hr.employees
WHERE salary < 10000
ORDER BY salary;