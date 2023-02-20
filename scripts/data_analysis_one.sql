SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM public.employees, public.salaries
WHERE public.employees.emp_no = public.salaries.emp_no;
	