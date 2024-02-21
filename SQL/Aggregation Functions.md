1) Query the total population of all cities in CITY where District is California.

Input Format

The CITY table is described as follows:
| FIELD | TYPE |
| ----- | ----- |
| ID | NUMBER |
| NAME |VARCHAR2(17) |
| COUNTRYCODE| VARCHAR2(3) |
| DISTRICT | VARCHAR2(20) |
| POPULATION |NUMBER |

**Solution**
```sql
SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California'
```
2) Query the average population of all cities in CITY where District is California.

Input Format

The CITY table is described as follows:
| FIELD | TYPE |
| ----- | ----- |
| ID | NUMBER |
| NAME |VARCHAR2(17) |
| COUNTRYCODE| VARCHAR2(3) |
| DISTRICT | VARCHAR2(20) |
| POPULATION |NUMBER |

**Solution**
```sql
SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT ='California'
```


3) Query the average population for all cities in CITY, rounded down to the nearest integer.

Input Format

The CITY table is described as follows:
| FIELD | TYPE |
| ----- | ----- |
| ID | NUMBER |
| NAME |VARCHAR2(17) |
| COUNTRYCODE| VARCHAR2(3) |
| DISTRICT | VARCHAR2(20) |
| POPULATION |NUMBER |

**Solution**
```sql
SELECT FLOOR(AVG(POPULATION))
FROM CITY
```

4) Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

Input Format

The CITY table is described as follows:
| FIELD | TYPE |
| ----- | ----- |
| ID | NUMBER |
| NAME |VARCHAR2(17) |
| COUNTRYCODE| VARCHAR2(3) |
| DISTRICT | VARCHAR2(20) |
| POPULATION |NUMBER |

**Solution**
```sql
SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE ='JPN'
```

5) Query the difference between the maximum and minimum populations in CITY.

Input Format

The CITY table is described as follows:
| FIELD | TYPE |
| ----- | ----- |
| ID | NUMBER |
| NAME |VARCHAR2(17) |
| COUNTRYCODE| VARCHAR2(3) |
| DISTRICT | VARCHAR2(20) |
| POPULATION |NUMBER |

**Solution**
```sql
SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY
```


6) Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.

Constraints

Sample Input
| ID | NAME | SALARY |
| ----- | ----- | --- |
| 1 | Kristeen  | 1420 |
| 2 | Ashley | 2006 |
| 3| Julia | 2210 |
| 4 | Maria | 3 |

Sample Output

2061

**Solution**
```sql
SELECT CEIL(AVG(Salary)-AVG(REPLACE(Salary,'0','')))
FROM  EMPLOYEES
```


7) Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of  decimal places.
The sum of all values in LONG_W rounded to a scale of  decimal places.
Input Format

The STATION table is described as follows:
| FIELD | TYPE |
| ----- | ----- |
| ID | NUMBER |
| CITY |VARCHAR2(21) |
| STATE| VARCHAR2(2) |
| LAT_N | NUMBER |
| LONG_W |NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

Output Format

Your results must be in the form:

lat lon
where  is the sum of all values in LAT_N and  is the sum of all values in 
LONG_W. Both results must be rounded to a scale of  decimal places.

**Solution**
```sql
SELECT ROUND(SUM(LAT_N),2),ROUND(SUM(LONG_W),2)
FROM STATION;
```

8) Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than  and less than . Truncate your answer to  decimal places.

Input Format

The STATION table is described as follows:
| FIELD | TYPE |
| ----- | ----- |
| ID | NUMBER |
| CITY |VARCHAR2(21) |
| STATE| VARCHAR2(2) |
| LAT_N | NUMBER |
| LONG_W |NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.


**Solution**
```sql
select Round(sum(LAT_N),4)
from STATION 
where LAT_N > 38.7880 and LAT_N < 137.2345;
```


9) Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than . Truncate your answer to  decimal places.

Input Format

The STATION table is described as follows:
| FIELD | TYPE |
| ----- | ----- |
| ID | NUMBER |
| CITY |VARCHAR2(21) |
| STATE| VARCHAR2(2) |
| LAT_N | NUMBER |
| LONG_W |NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.


**Solution**
```sql
select Round(max(LAT_N),4)
from STATION
where LAT_N < 137.2345;
```


10) Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than . Round your answer to  decimal places.

Input Format

The STATION table is described as follows:
| FIELD | TYPE |
| ----- | ----- |
| ID | NUMBER |
| CITY |VARCHAR2(21) |
| STATE| VARCHAR2(2) |
| LAT_N | NUMBER |
| LONG_W |NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.


**Solution**
```sql
 select Round(LONG_W,4)
 from  STATION
 where LAT_N = (Select Max(LAT_N)from STATION where LAT_N < 137.2345);
```


11) Query the smallest Northern Latitude (LAT_N) from STATION that is greater than . Round your answer to  decimal places.

Input Format

The STATION table is described as follows:
| FIELD | TYPE |
| ----- | ----- |
| ID | NUMBER |
| CITY |VARCHAR2(21) |
| STATE| VARCHAR2(2) |
| LAT_N | NUMBER |
| LONG_W |NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

**Solution**
```sql
SELECT ROUND(MIN(LAT_N),4)
FROM STATION
WHERE LAT_N>38.7780;
```


12) Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than . Round your answer to  decimal places.

Input Format

The STATION table is described as follows:
| FIELD | TYPE |
| ----- | ----- |
| ID | NUMBER |
| CITY |VARCHAR2(21) |
| STATE| VARCHAR2(2) |
| LAT_N | NUMBER |
| LONG_W |NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

**Solution**
```sql
SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N=(
    SELECT MIN(LAT_N) 
    FROM STATION 
    WHERE LAT_N>38.7780
    );
```

13) Consider  and  to be two points on a 2D plane.

 happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
 happens to equal the minimum value in Western Longitude (LONG_W in STATION).
 happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
 happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points  and  and round it to a scale of  decimal places.

Input Format

The STATION table is described as follows:
| FIELD | TYPE |
| ----- | ----- |
| ID | NUMBER |
| CITY |VARCHAR2(21) |
| STATE| VARCHAR2(2) |
| LAT_N | NUMBER |
| LONG_W |NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.
**Solution**
```sql
SELECT ROUND(ABS(MIN(LAT_N)-MAX(LAT_N))+ABS(MIN(LONG_W)-MAX(LONG_W)),4)
FROM STATION;
```

14) Consider  and  to be two points on a 2D plane where  are the respective minimum and maximum values of Northern Latitude (LAT_N) and  are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points  and  and format your answer to display  decimal digits.

Input Format

The STATION table is described as follows:
| FIELD | TYPE |
| ----- | ----- |
| ID | NUMBER |
| CITY |VARCHAR2(21) |
| STATE| VARCHAR2(2) |
| LAT_N | NUMBER |
| LONG_W |NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.
**Solution**
```sql
SELECT ROUND(SQRT(POWER(MAX(LAT_N)-MIN(LAT_N),2)+POWER(MAX(LONG_W)-MIN(LONG_W),2)),4)
FROM STATION;
```