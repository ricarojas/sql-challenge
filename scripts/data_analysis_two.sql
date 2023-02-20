SELECT first_name, last_name, Cast(hire_date as Date)
FROM public.employees
WHERE Cast(hire_date as Date) BETWEEN Cast('1986-01-01' as Date) AND Cast('1986-12-31' as Date)