DROP TABLE retirement_titles

SELECT e.emp_no,
       e.first_name,
       e.last_name,
       t.title,
       t.from_date,
       t.to_date
INTO retirement_titles
FROM employees as e
JOIN titles as t 
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY (e.emp_no);

SELECT *
FROM retirement_titles

DROP TABLE unique_titles

SELECT DISTINCT ON (emp_no)
       emp_no,
       first_name,
       last_name,
       title
INTO unique_titles
FROM retirement_titles
WHERE (to_date = '9999-01-01')

SELECT *
FROM unique_titles

SELECT COUNT (title), title
INTO retiring_titles
FROM unique_titles
GROUP BY (title)
ORDER BY COUNT DESC

SELECT *
FROM retiring_titles

SELECT DISTINCT ON(e.emp_no)
       e.first_name,
       e.last_name,
       e.birth_date,
       de.from_date,
       de.to_date,
       t.title
INTO mentorship_eligibility 
FROM employees as e
JOIN departments as d
ON (e.emp_no = d.dept_no)
JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
WHERE 

SELECT DISTINCT ON(e.emp_no)
       e.emp_no,
       e.first_name,
       e.last_name,
       e.birth_date,
       de.from_date,
       de.to_date,
       t.title
INTO mentorship_eligibility 
FROM employees as e
JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
JOIN titles as t
ON (t.emp_no = e.emp_no)
WHERE t.to_date = '9999-01-01'
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no

SELECT *
FROM mentorship_eligibility












