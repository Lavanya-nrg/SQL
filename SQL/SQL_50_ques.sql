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