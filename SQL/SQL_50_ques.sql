1) Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.

**Solution**
```sql
SELECT first_name AS WORKER_NAME FROM Worker;
```

2) Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.

**Solution**
```sql
SELECT UPPER(first_name) FROM Worker;
```

3) Write an SQL query to fetch unique values of DEPARTMENT from Worker table.

**Solution**
```sql
SELECT DISTINCT DEPARTMENT FROM Worker;
```

4) Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.

**Solution**
```sql
SELECT SUBSTR(first_name,1,3) FROM Worker;
```

5) Write an SQL query to find the position of the alphabet (‘b’) in the first name column ‘Amitabh’ from Worker table.

**Solution**
```sql
SELECT INSTR(first_name,'b') FROM Worker WHERE first_name=‘Amitabh’;
```

6) Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.

**Solution**
```sql
SELECT RTRIM(first_name) FROM WORKER;
```

7) Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.

**Solution**
```sql
SELECT LTRIM(first_name) FROM WORKER;
```

8)Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.

**Solution**
```sql
SELECT DISTINCT DEPARTMENT, LENGTH(DEPARTMENT) FROM WORKER;
```

9) Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’

**Solution**
```sql
SELECT REPLACE(firstname,'a','A') FROM WORKER;
```

10) Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME.
-- A space char should separate them.

**Solution**
```sql
SELECT CONCAT(first_name,' ', last_name) AS COMPLETE_NAME FROM WORKER;
```

11) Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.

**Solution**
```sql
SELECT * FROM WORKER ORDER BY first_name ASC;
```

12) Write an SQL query to print all Worker details from the Worker table order by 
-- FIRST_NAME Ascending and DEPARTMENT Descending.

**Solution**
```sql
SELECT * FROM WORKER ORDER BY first_name ASC, DEPARTMENT DESC;
```

13) Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.

**Solution**
```sql
SELECT * FROM WORKER WHERE first_name IN ('Vipul','Satish');
```

14) Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.

**Solution**
```sql
SELECT * FROM WORKER WHERE first_name NOT IN ('Vipul','Satish');
```

15) Write an SQL query to print details of Workers with DEPARTMENT name as “Admin*”.

**Solution**
```sql
SELECT * FROM WORKER WHERE DEPARTMENT LIKE 'Admin%';
```

16) Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.

**Solution**
```sql
SELECT * FROM WORKER WHERE first_name LIKE '%a%;
```

17) Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’

**Solution**
```sql
SELECT * FROM WORKER WHERE first_name LIKE '%a';
```

18) Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.

**Solution**
```sql
SELECT * FROM WORKER WHERE first_name LIKE '_____h';
```

19) Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.

**Solution**
```sql
SELECT * FROM WORKER WHERE SALARY BETWEEN 100000 and 500000;
```

20) Write an SQL query to print details of the Workers who have joined in Feb’2014.

**Solution**
```sql
SELECT * FROM WORKER WHERE SALARY BETWEEN 100000 and 500000;
```

21) Write an SQL query to fetch the count of employees working in the department ‘Admin’.

**Solution**
```sql
SELECT DEPARTMENT,COUNT(*) FROM WORKER WHERE DEPARTMENT='Admin';
```

22) Write an SQL query to fetch worker full names with salaries >= 50000 and <= 100000.

**Solution**
```sql
SELECT CONCAT(first_name,last_name) FROM WORKER WHERE SALARY BETWEEN 50000 and 100000;
```

23)  Write an SQL query to fetch the no. of workers for each department in the descending order.

**Solution**
```sql
SELECT DEPARTMENT,COUNT(worker_id) FROM WORKER GROUP BY DEPARTMENT ORDER BY DEPARTMENT DESC;
```
24) Write an SQL query to print details of the Workers who are also Managers.

**Solution**
```sql
SELECT W. * FROM WORKER AS w INNER JOIN TITLE AS t ON w.id=t.worker_ref_id WHERE t.depaartment='MANAGER';
```

25) Write an SQL query to fetch number (more than 1) of same titles in the ORG of different types.


**Solution**
```sql
SELECT WORKER_TITLE,COUNT(*) FROM TITLE GROUP BY WORKER_TITLE HAVING count>1; 
```

26) Write an SQL query to show only odd rows from a table.

**Solution**
```sql
SELECT * FROM WORKER WHERE MOD(WORKER_ID,2)!=0; 
```

27) Write an SQL query to show only even rows from a table. 

**Solution**
```sql
SELECT * FROM WORKER WHERE MOD(WORKER_ID,2)=0; 
```

28) Write an SQL query to clone a new table from another table.

**Solution**
```sql
CREATE TABLE worker_clone LIKE worker;
INSERT INTO worker_clone select * from worker;
select * from worker_clone; 
```

29) Write an SQL query to fetch intersecting records of two tables.

**Solution**
```sql
SELECT w. * FROM WORKER INNER JOIN WORKER_CLONE USING(WORKER_ID);
```

30) Write an SQL query to show records from one table that another table does not have.
-- MINUS

**Solution**
```sql
SELECT w. * FROM WORKER LEFT JOIN WORKER_CLONE USING(WORKER_ID) WHERE WORKER_CLONE.WORKER_ID=NULL;
```

31) Write an SQL query to show the current date and time.
-- DUAL

**Solution**
```sql
SELECT currdate();
SELECT now();
```

32) Write an SQL query to show the top n (say 5) records of a table order by descending salary.

**Solution**
```sql
SELECT * FROM WORKER ORDER BY SALARY DESC LIMIT 5;
```

33) Write an SQL query to determine the nth (say n=5) highest salary from a table.

**Solution**
```sql
SELECT * FROM WORKER ORDER BY SALARY DESC LIMIT 4,1;
```

34) Write an SQL query to determine the 5th highest salary without using LIMIT keyword.

**Solution**
```sql
select salary from worker w1
WHERE 4 = (
SELECT COUNT(DISTINCT (w2.salary))
from worker w2
where w2.salary >= w1.salary
);
```