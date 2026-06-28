select
    department_id::integer as department_id,
    trim(department_name) as department_name
from {{ ref('departments') }}
