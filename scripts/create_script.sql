-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

DROP TABLE IF EXISTS departments, dept_emp, dept_manager, employees, salaries, titles CASCADE;

CREATE TABLE departments (
    dept_no VARCHAR(256)  NOT NULL   UNIQUE,
    dept_name VARCHAR(256)   NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE dept_emp (
	emp_no VARCHAR(256)   NOT NULL,
    dept_no VARCHAR(256)   NOT NULL
    CONSTRAINT ck_dept_emp PRIMARY KEY (
        emp_no,
        dept_no
    )
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(256)   NOT NULL,
    emp_no VARCHAR(256)   NOT NULL UNIQUE
    CONSTRAINT ck_dept_manager PRIMARY KEY (
        emp_no,
        dept_no
    )
);

CREATE TABLE employees (
    emp_no VARCHAR(256)   NOT NULL   UNIQUE,
    emp_title_id VARCHAR(256)   NOT NULL,
    birth_date VARCHAR(16)   NOT NULL,
    first_name VARCHAR(256)   NOT NULL,
    last_name VARCHAR(256)   NOT NULL,
    sex CHAR(8)   NOT NULL,
    hire_date VARCHAR(16)   NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (
        emp_no
    )
);

CREATE TABLE salaries (
    emp_no VARCHAR(256)   NOT NULL UNIQUE,
    salary VARCHAR(256)   NOT NULL
    CONSTRAINT pk_salaries PRIMARY KEY (
        emp_no
    )
);

CREATE TABLE titles (
    title_id VARCHAR(256)   NOT NULL   UNIQUE,
    title VARCHAR(256)   NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (
        title_id
     )
);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

