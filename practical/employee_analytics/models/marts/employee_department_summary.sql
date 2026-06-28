select
    d.department_id,
    d.department_name,
    count(e.employee_id) as employee_count,
    sum(case when e.status = 'ACTIVE' then 1 else 0 end) as active_employee_count,
    round(avg(e.salary), 2) as average_salary
from {{ ref('stg_departments') }} as d
left join {{ ref('stg_employees') }} as e
    on d.department_id = e.department_id
group by
    d.department_id,
    d.department_name
