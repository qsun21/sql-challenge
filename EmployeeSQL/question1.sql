select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees AS e JOIN salaries AS s ON e.emp_no = s.emp_no;
