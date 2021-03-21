-- Zadanie 2.1
SELECT DISTINCT job_id "kod stanowiska", manager_id "numer kierownika"
FROM hr.employees
WHERE manager_id = 100 
OR manager_id = 102
ORDER BY manager_id DESC;

-- Zadanie 2.2
SELECT first_name "imie pracownika", last_name "nazwisko pracownika", salary "zarobki"
FROM hr.employees
WHERE manager_id = 100
AND salary > 10000
ORDER BY salary ASC;

-- Zadanie 2.3
SELECT first_name "imie pracownika", last_name "nazwisko pracownika", job_id "kod stanowiska", salary "zarobki"
FROM hr.employees
WHERE job_id LIKE '%_MGR'
ORDER BY salary DESC;

-- Zadanie 2.4
SELECT job_id "kod stanowiska", job_title "nazwa stanowiska"
FROM hr.jobs
WHERE job_title LIKE '% %';

-- Zadanie 2.5
SELECT employee_id "numer pracownika", first_name "imie pracownika", last_name "nazwisko pracownika",  salary "zarobki", job_id "kod stanowiska"
FROM hr.employees
WHERE salary > 3000
AND( job_id LIKE 'ST%' 
OR job_id LIKE 'SH%')
ORDER BY salary ASC;

-- Zadanie 2.6
SELECT COUNT(job_id) "ilosc pracownikow", job_id "kod stanowiska"
FROM hr.employees
GROUP BY job_id
ORDER BY COUNT(job_id) DESC;

-- Zadanie 2.7
SELECT COUNT(location_id) "ilosc departamentow", location_id "kod lokalizacji"
FROM hr.departments
GROUP BY location_id
ORDER BY COUNT(location_id) DESC;

-- Zadanie 2.8
SELECT COUNT(manager_id) "ilosc pracownikow", manager_id "numer kierownika"
FROM hr.employees
GROUP BY manager_id
ORDER BY COUNT(manager_id) DESC;

-- Zadanie 2.9
SELECT count(manager_id) "ilosc kierownikow", department_id "numer departamentu"
FROM hr.departments
GROUP BY department_id
ORDER BY count(manager_id) DESC;

-- Zadanie 2.10
SELECT manager_id "numer kierownika", MAX(salary) "najwyzsze zarobki pracownika"
FROM hr.employees
GROUP BY manager_id;
-- w poleceniu nie bylo podanego sposobu sortowania

-- Zadanie 2.11
SELECT job_id "kod stanowiska", AVG(salary) "srednia wyplata pracownikow"
FROM hr.employees
GROUP BY job_id
ORDER BY AVG(salary) DESC;

-- Zadanie 2.12
SELECT job_id "kod stanowiska", MIN(salary) "placa minimalna",  MAX(salary) "placa maksymalna", AVG(salary) "placa srednia"
FROM hr.employees
WHERE salary > 5000
GROUP BY job_id
ORDER BY MIN(salary) ASC;