-- Zadanie 4.1
SELECT last_name "nazwisko", salary "zarobki"
FROM hr.employees
WHERE salary > 0.9* (
    SELECT salary 
    FROM hr.employees 
    WHERE last_name = 'Chen');

-- Zadanie 4.2
SELECT last_name "nazwisko", salary "zarobki"
FROM hr.employees
WHERE salary > ( 
    SELECT MIN(salary)
        FROM hr.departments 
        JOIN hr.employees
        USING (department_id)
        WHERE department_name = 'Marketing');

-- Zadanie 4.3
SELECT department_name "nazwa dzialu", COUNT(*) "liczba pracownikow"
FROM hr.departments
JOIN hr.employees
USING (department_id)
GROUP BY department_name -- Wymagane było pogrupowanie aby HAVING działało
HAVING COUNT(*) > (
    SELECT COUNT(*) 
    FROM hr.employees 
    JOIN hr.departments 
    USING (department_id)
    WHERE department_name = 'Sales');


-- Zadanie 4.4
SELECT city "Miasto", AVG(salary) "Srednia placa"
FROM hr.employees
JOIN hr.departments
USING (department_id)
JOIN hr.locations
USING (location_id)
GROUP By city -- Wymagane grupowanie aby HAVING działało
HAVING AVG(salary) > (
    SELECT MAX(salary) 
    FROM hr.employees 
    JOIN hr.departments 
    USING (department_id) 
    JOIN hr.locations 
    USING (location_id) 
    WHERE city = 'London');

-- Brzydkie wyniki lecz nie było w poleceniu informacji o zaookrąglaniu

-- Zadanie 4.5
SELECT last_name "Nazwisko", salary "Zarobki", (
    SELECT AVG(salary) 
    FROM hr.employees 
    WHERE department_id = e.department_id) "Srednie zarobki w dziale"
FROM hr.employees e;
-- Brzydkie wyniki lecz nie było w poleceniu informacji o zaookrąglaniu

-- Zadanie 4.6
SELECT last_name "Nazwisko", department_name "Nazwa dzialu", maxSalary "maksymalne zarobki"
FROM hr.employees
JOIN hr.departments
USING (department_id)
JOIN ( SELECT department_id, MAX(salary) as maxSalary
       FROM HR.EMPLOYEES
       JOIN HR.DEPARTMENTS
       USING (department_id)
       GROUP BY (department_id))
USING (department_id)
WHERE salary = maxSalary;