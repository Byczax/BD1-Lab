-- Zadanie 3.1/A
SELECT department_name "nazwa dzialu", last_name "nazwisko pracownika", salary"zarobki"
from hr.departments hra, hr.employees hrb
WHERE hra.department_id = hrb.department_id
AND salary > 12000
ORDER BY salary DESC;

-- Zadanie 3.1/B
SELECT department_name "nazwa dzialu", last_name "nazwisko pracownika", salary"zarobki"
from hr.departments
JOIN hr.employees
USING (department_id)
JOIN hr.locations
USING (location_id)
WHERE salary > 12000
ORDER BY salary DESC;

-- Zadanie 3.2/A
SELECT last_name "nazwisko pracownika", department_name "nazwa dzialu",  city "miasto"
from hr.departments hra, hr.employees hrb, hr.locations hrc
WHERE hra.department_id = hrb.department_id
AND hra.location_id = hrc.location_id;
-- w poleceniu nie bylo podanego sposobu sortowania

-- Zadanie 3.2/B
SELECT last_name "nazwisko pracownika", department_name "nazwa dzialu",  city "miasto"
from hr.departments
JOIN hr.employees
USING (department_id)
JOIN hr.locations
USING (location_id);
-- w poleceniu nie bylo podanego sposobu sortowania

-- Zadanie 3.3
SELECT department_name "nazwa dzialu", COUNT(department_id) "liczba pracownikow"
from hr.departments
JOIN hr.employees
USING (department_id)
GROUP BY department_name;
-- w poleceniu nie bylo podanego sposobu sortowania

-- Zadanie 3.4
SELECT country_name "nazwa kraju", COUNT(employee_id) "liczba pracownikow"
from hr.locations
JOIN hr.departments
USING (location_id)
JOIN hr.countries
USING (country_id)
JOIN hr.employees
USING (department_id)
GROUP BY country_name;
-- w poleceniu nie bylo podanego sposobu sortowania

-- Zadanie 3.5
SELECT hra.last_name "nazwisko pracownika", hrb.last_name "nazwisko kierownika" 
FROM hr.employees hra
JOIN hr.employees hrb 
ON hra.manager_id = hrb.employee_id
ORDER BY hrb.last_name ASC;

-- Zadanie 3.6
SELECT last_name "nazwisko pracownika", department_name "nazwa dzialu", city "miasto"
FROM hr.employees
JOIN hr.departments
USING(department_id)
RIGHT OUTER JOIN hr.locations
USING(location_id);
-- w poleceniu nie bylo podanego sposobu sortowania

-- Zadanie 3.7
SELECT department_name "nazwa dzialu", COUNT(employee_id) "liczba pracownikow"
FROM hr.departments
NATURAL JOIN hr.employees
GROUP BY department_name
HAVING COUNT(employee_id)>5;

-- Zadanie 3.8
SELECT last_name "Nazwisko pracownika", ROUND(100*salary/((max_salary+min_salary)/2)) "srednie zarobki"
FROM hr.employees
NATURAL JOIN hr.jobs
ORDER BY ROUND(100*salary/((max_salary+min_salary)/2)) DESC;

-- Zadanie 3.9
SELECT city "miasto", COUNT(employee_id) "liczba pracownikow"
FROM hr.locations
JOIN hr.departments
USING (location_id)
JOIN hr.employees
USING (department_id)
JOIN hr.jobs
USING (job_id)
WHERE ROUND(100*salary/max_salary) > 80
GROUP BY city;
-- w poleceniu nie bylo podanego sposobu sortowania