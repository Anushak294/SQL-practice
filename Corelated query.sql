select  dept, salary from employeeee_official  e
where salary>(
	    select avg(salary) as dept_avg_salary
	    from employeeee_official f
	    where e.dept=f.dept
            )

