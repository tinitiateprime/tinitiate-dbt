select
    employee_id::integer as employee_id,
    trim(employee_name) as employee_name,
    department_id::integer as department_id,
    salary::number(12, 2) as salary,
    upper(status) as status
from {{ ref('employees') }}
