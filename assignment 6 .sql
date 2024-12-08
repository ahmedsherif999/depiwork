--Task 1: Using Comparison and Logical Operators

select employee_id , last_name , Salary 
from employees 
WHERE salary between 2000 and 5000 and manager_id not in (101 ,200)

--Task 2: Using JOINs and Aliases

select e.first_name , e.last_name ,d.department_name
from employees e, departments d
where d.department_id = e.department_id

--Task 3: Aggregate Functions and GROUP BY

select count(*) as 'employees number' , avg (salary) as 'avg salary' , department_id
from employees 
group by department_id
