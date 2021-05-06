# Bazy Danych 1 - Laboratorium

Programy napisane na laboratorium z Baz danych 1

|      Wydział elektroniki       |  Kierunek: informatyka techniczna |
|:-------------------------------|------------------------:|
| Grupa zajęciowa: Pt 15:15 TP   | Semestr: 2020/2021 Lato |
| Prowadzący:                    | mgr inż. Adam Włodarczyk |

| Autor           |
|:---------------:|
| Byczko Maciej   |

## Polecenia

### Laboratorium 1

- 1.1. Wszystkich nazwisk pracowników oraz ich wypłat.

- 1.2. Wszystkich nazw działów w kolumnie "nazwa_dzialu" wraz z numerami identyfikacyjnymi ich kierowników w kolumnie "numer_kierownika".

- 1.3. Nazwisk wszystkich pracowników, którzy zarabiają więcej niż 10000 wraz z ich płacami, posortowane w kolejności od najwięcej do najmniej zarabiającego.

### Laboratorium 2

- 2.1. Kodów stanowisk (bez powtarzania) oraz odpowiadających im numerów kierowników dla kierowników o numerach 100 lub 102, posortowanych malejąco po numerach kierowników. Użyj polskich nazw kolumn.

- 2.2. Imion, nazwisk, oraz wypłat pracowników przypisanych do kierownika o numerze 100, których wypłaty wynoszą ponad 10000, posortowanych rosnąco po wypłatach. Użyj polskich nazw kolumn.

- 2.3. Imion, nazwisk, kodów stanowisk oraz wypłat pracowników, których kod stanowiska kończy się na "_MGR", posortowanych malejąco po wypłatach. Użyj polskich nazw kolumn.

- 2.4. Kodów oraz nazw stanowisk, dla których nazwa stanowiska składa się co najmniej z dwóch wyrazów. Użyj polskich nazw kolumn.

- 2.5. Numerów, imion, nazwisk, wypłat oraz kodów stanowisk pracowników, których wypłata wynosi ponad 3000 oraz kod stanowiska rozpoczyna się or "ST" lub "SH", posortowanych rosnąco po wypłatach. Użyj polskich nazw kolumn.

- 2.6. Liczby pracowników przypisanych do każdego kodu stanowiska wraz z odpowiadającymi kodami stanowisk, posortowanych malejąco po liczbie pracowników. Użyj polskich nazw kolumn.

- 2.7. Liczby departamentów w każdej lokacji wraz z odpowiadającymi kodami lokacji, posortowanych malejąco po liczbie departamentów. Użyj polskich nazw kolumn.

- 2.8. Liczby pracowników przypisanych do każdego kierownika wraz z odpowiadającymi numerami kierowników, posortowanych malejąco po liczbie pracowników. Użyj polskich nazw kolumn.

- 2.9. Liczby kierowników przypisanych do każdego numeru departamentu wraz z odpowiadającymi im numerami departamentów, posortowanych malejąco po liczbie kierowników. Użyj polskich nazw kolumn.

- 2.10. Numerów kierowników oraz największych wypłat pracowników, którzy są do nich przypisani. Użyj polskich nazw kolumn

- 2.11. Kodów stanowisk oraz średnich wypłat pracowników, którzy są do nich przypisani, posortowanych malejąco po średnich wypłatach. Użyj polskich nazw kolumn.

- 2.12. Kodów stanowisk oraz najmniejszych, największych oraz średnich wypłat pracowników zarabiających ponad 5000, którzy są do nich przypisani, posortowanych rosnąco po najmniejszych wypłatach. Użyj polskich nazw kolumn.

### Laboratorium 3

- 3.1. Nazw działów (department_name), nazwisk (last_name) oraz płac (salary) pracowników, którzy zarabiają ponad 12000, posortowane od najlepiej do najgorzej zarabiających (JOIN, tabele EMPLOYEES, DEPARTMENTS):
  - bez wykorzystania polecenia JOIN
  - z wykorzystaniem polecenia JOIN

- 3.2. Nazwisk pracowników (last_name), nazw ich działów (department_name) i miast (city), w których pracują (JOIN, tabele EMPLOYEES, DEPARTMENTS, LOCATIONS):
  - bez wykorzystania polecenia JOIN
  - z wykorzystaniem polecenia JOIN

- 3.3. Nazw działów (department_name) i liczby pracowników, którzy w nich pracują (JOIN, tabele DEPARTMENTS, EMPLOYEES).

- *3.4. Państw (country_name) i liczby pracowników, którzy w nich pracują (JOIN).

- *3.5. Nazwisk pracowników (last_name) i nazwisk ich kierowników (last_name), posortowane rosnąco po nazwiskach kierowników. Użyj aliasów kolumn. (JOIN)

- 3.6. Nazwisk pracowników (last_name), wszystkich nazw działów (department_name) oraz wszystkich miast (city), w których pracują i mogą pracować. (OUTER JOIN, tabele EMPLOYEES, DEPARTMENTS, LOCATIONS)

- 3.7. Nazw działów (department_name), które zatrudniają ponad 5 pracowników wraz z liczbą pracowników, którzy w nich pracują. (NATURAL JOIN, GROUP BY, HAVING, tabele DEPARTMENTS, EMPLOYEES)

- 3.8. Nazwisk pracowników (last_name) oraz ich wypłat (salary) wyrażonych w procentach wartości średniej płacy sugerowanej dla danego stanowiska (obliczonej z kolumn: max_salary, min_salary). Posortuj wyniki malejąco po wartościach procentowych. (ROUND, NATURAL JOIN, tabele EMPLOYEES, JOBS)

- 3.9. Miast (city) oraz liczby pracowników, którzy w nich pracują i zarabiają ponad 80% maksymalnej płacy na swoim stanowisku (max_salary). (JOIN USING, GROUP BY, tabele LOCATIONS, DEPARTMENTS, EMPLOYEES, JOBS)

### Laboratorium 4

- 4.1. Nazwisk (last_name) i wypłat (salary) pracowników, którzy zarabiają ponad 90% wypłaty pracownika o nazwisku Chen.

- 4.2. Nazwisk (last_name) i wypłat (salary) pracowników, którzy zarabiają więcej, niż dowolny pracownik działu 'Marketing'.

- 4.3. Nazw działów (department_name) i liczby pracowników, w których pracuje więcej pracowników, niż w dziale 'Sales'.

- 4.4. Miast (city) i średnich płac (salary) pracowników, w których średnia płaca jest większa, niż maksymalna płaca w Londynie.

- *4.5. Nazwisk pracowników (last_name), ich wypłat (salary) i średnich płac (salary) w działach, w których pracują.

- *4.6. Nazwisk (last_name), nazw działów (department_name) oraz płac (salary) pracowników, którzy zarabiają najwięcej w dziale.

## Laboratorium 5

- 5.1. Dodaj do tabeli employees pracownika o numerze (employee_id) 10, nazwisku (last_name) 'Kovalsky', emailu (email) 'Koval',  dacie zatrudnienia (hire_date) '10/10/10' oraz numerze stanowiska (job_id) takim samym, jak pracownik który zarabia najwięcej w firmie.

- 5.2. Zmodyfikuj w tabeli employees pracownika o numerze (employee_id) 10, dodając mu pensję (salary) o wartości średniej pensji pracowników, których nazwisko (last_name) rozpoczyna się od litery K.

- 5.3. Usuń z tabeli employees pracownika, który nie ma przypisanego numeru telefonu.

- 5.4. Stwórz tabelę o nazwie STUDENCI i kolumnach:
  - "Numer_indeksu" - klucz główny, wartości numeryczne do 6-ciu cyfr
  - "Imie" - ciąg znaków o zmiennej długości do 16 znaków, nie może być pusta
  - "Nazwisko" - ciąg znaków o zmiennej długości do 32 znaków, nie może być pusta
  - "Data_ur" - data, wartość może być pusta
  - "Srednia_ocen" - wartość numeryczna o długości 2 cyfr i dokładności do 1 miejsca po przecinku, zawierająca wartości od 2.0 do 5.5 (użyj ograniczenia CHECK), wartość może być pusta
  - "Plec" - ciąg znaków o stałej długości (1), dopuszczający jedynie wartości "M" oraz "F", nie może być pusta

- 5.5. Dodaj do tabeli STUDENCI przykładowego studenta.

- 5.6. Zmień w tabeli STUDENCI kolumnę Srednia_ocen ustalając wartość domyślną równą 5.5