select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e join dept_emp as de on e.emp_no = de.emp_no
	join departments as d on d.dept_no = de.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';	