SELECT last_name, count(*) as Frequency
FROM public.employees
GROUP BY last_name
ORDER BY count(*) desc;