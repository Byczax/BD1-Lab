-- zadanie 1.1
SELECT last_name, salary
FROM hr.employees;

-- zadanie 1.2
SELECT department_name AS "nazwa_dzialu", manager_id "numer_kierownika" -- Może działać z "AS" oraz bez tego słowa kluczowego
FROM hr.departments;

-- zadanie 1.3
SELECT last_name, salary
FROM hr.employees
WHERE salary > 10000
ORDER BY salary DESC;