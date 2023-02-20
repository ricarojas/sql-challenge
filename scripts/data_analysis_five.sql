SELECT employees.first_name, employees.last_name, sex
FROM public.employees
WHERE employees.first_name = 'Hercules' and employees.last_name like 'B%'