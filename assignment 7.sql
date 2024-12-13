--Task 1: Creating a Simple View
--Create a simple view named vw_employee_details that displays the first name, last name, and department name of employees
create VIEW vw_employee_details as 
select e.first_name , e.last_name , d.department_name
from employees e , departments d 
where d.department_id = e.department_id

--Task 2: Modifying a View
--Modify the existing view vw_work_hrs to only include employees working in department number 5.
CREATE or replace vw_work_hrs AS
select  e.first_name , e.last_name , e.hrs , d.departments_no
from employees e , departments d 
where d.department_id = e.department_id


--Task 3: Creating Views with Check Option
--Create a view named vw_high_status_suppliers to display all suppliers with a status greater
--than 15, and ensure that any updates or inserts through the view still meet the status condition.
CREATE VIEW vw_high_status_suppliers AS
select * from suppliers 
where status > 15
with check OPTION;






