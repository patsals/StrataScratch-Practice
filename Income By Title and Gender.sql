select
    employee_title,
    sex,
    avg(salary) + avg(total_bonus)
from
    sf_employee as e
join
    (select
        worker_ref_id,
        sum(bonus) as total_bonus
    from
        sf_bonus
    group by
        worker_ref_id) as b
on
    e.id = b.worker_ref_id
group by
    employee_title,
    sex
order by 
    employee_title,
    sex
