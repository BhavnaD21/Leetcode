/* Write your T-SQL query statement below */
select 
Project.project_id,
ROUND(
    SUM(CAST(Employee.experience_years AS DECIMAL))/COUNT(Project.project_id),
    2
)
AS average_years
from Project
left join Employee
on Project.employee_id  = Employee.employee_id 
group by 
Project.project_id


