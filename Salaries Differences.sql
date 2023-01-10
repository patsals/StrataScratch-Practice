select
    abs(e_max_salary - m_max_salary) as salary_difference
from
    (select
        max(salary) as e_max_salary
    from
        db_employee as a
    join
        db_dept as b
    on
        a.department_id = b.id
    where
        b.department = "engineering") as e,
    (select
        max(salary) as m_max_salary
    from
        db_employee as a
    join
        db_dept as b
    on
        a.department_id = b.id
    where
        b.department = "marketing") as m;


    

    