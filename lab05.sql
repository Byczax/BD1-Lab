-- Zadanie 5.1
INSERT INTO hr.employees (employee_id, last_name, email, hire_date, job_id)
VALUES (10, 'Kovalsky', 'Koval', '2010-10-10', (
    SELECT job_id 
    FROM hr.employees 
    WHERE salary = (
        SELECT MAX(salary) 
        FROM hr.employees)));

-- Zadanie 5.2
UPDATE hr.employees
SET salary = (
    SELECT AVG(salary) 
    FROM hr.employees 
    WHERE last_name LIKE 'K%')
WHERE employee_id = 10;

-- Zadanie 5.3
DELETE FROM hr.employees
WHERE phone_number IS NULL;

-- Zadanie 5.4
CREATE TABLE STUDENCI (
    Numer_indeksu NUMERIC(6),
    Imie VARCHAR(16) NOT NULL,
    Nazwisko VARCHAR(32) NOT NULL,
    Data_ur DATE NULL,
    Srednia_ocen NUMERIC(2,1) NULL, CHECK(Srednia_ocen BETWEEN 2.0 AND 5.5),
    Plec VARCHAR(1) NOT NULL, CHECK(Plec IN('M','F')),
    PRIMARY KEY (Numer_indeksu)
);

-- Zadanie 5.5
INSERT INTO STUDENCI (Numer_indeksu, Imie, Nazwisko, Data_ur, Srednia_ocen, Plec)
VALUES (222222, 'Adam', 'Kowalski', NULL, NULL, 'M');

-- Zadanie 5.6
ALTER TABLE STUDENCI
MODIFY Srednia_ocen DEFAULT 5.5;