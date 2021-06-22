select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager as dm join employees as e on dm.emp_no = e.emp_no
join departments as d on dm.dept_no = d.dept_no;