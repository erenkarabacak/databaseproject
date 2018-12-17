#For each employee, get the employee last name and the last name of their department manager.

select e1.last_name ,e2.last_name
from employee e1,employee e2,department d
where e1.dno =d.dnumber and d.mgrssn =e2.ssn and e1.last_name != e2.last_name
order by e1.last_name asc;
#Salaries of all employees have been incremented by $1000 plus 3% of their previous salaries.
select * from employee;
update employee
set salary=salary*1.03 + 1000;
#Get the full names of employees who are working on more than one project.
select sex,min(salary),max(salary),avg(salary)
from employee
group by sex;





