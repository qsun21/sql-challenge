select count(last_name) as last_name_frequency_number, last_name 
from employees 
group by last_name
order by last_name_frequency_number desc;