With DepartmentInfo AS (SELECT departments.dept_no, departments.dept_name, dept_emp.emp_no
	FROM public.departments, public.dept_emp
	WHERE departments.dept_no = dept_emp.dept_no)
	
SELECT DepartmentInfo.dept_no, DepartmentInfo.dept_name, DepartmentInfo.emp_no, employees.last_name, employees.first_name
FROM public.employees, DepartmentInfo
WHERE employees.emp_no = DepartmentInfo.emp_no AND DepartmentInfo.dept_name = 'Sales';