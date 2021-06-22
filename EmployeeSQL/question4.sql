select de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de join employees as e on de.emp_no = e.emp_no
join departments as d on de.dept_no = d.dept_no;