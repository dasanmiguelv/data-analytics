-- CREATE VIEW RH_PowerBI as
Select 
a.BusinessEntityID,
a.StartDate as fechaContrato,
a.EndDate as finContrato,
b.GroupName as Gerencia,
b.Name as Departamento,
c.FirstName + ' ' + c.LastName as NombreEmpleado,
d.JobTitle,
d.Gender,
d.MaritalStatus,
d.BirthDate
FROM HumanResources.EmployeeDepartmentHistory a
join HumanResources.Department b on a.DepartmentID = b.DepartmentID
join Person.Person c on a.BusinessEntityID = c.BusinessEntityID
join HumanResources.Employee d on a.BusinessEntityID = d.BusinessEntityID

