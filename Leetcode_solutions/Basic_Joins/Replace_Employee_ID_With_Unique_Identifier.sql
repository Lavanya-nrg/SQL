SELECT E.name AS name,U.unique_id AS unique_id
FROM Employees AS E LEFT JOIN  EmployeeUNI AS U
ON E.id=U.id 