USE ARC_EMPLOYEE_MANAGEMENT_SYSTEM;
CREATE TABLE employees (
employee_id INT,
employee_name VARCHAR (255),
department STRING,
salary NUMBER (10,2),
hire_date DATE
);

---Loading Data to the Table

INSERT INTO employees (employee_id, employee_name, department, salary,
hire_date)
VALUES 
(101,'Ayanda Nkosi','ICT',42000,'2024-01-15'),
(102,'Thabo Mokoena','Finance',38000,'2023-06-12'),
(103,'Lerato Dlamini','HR',32000,'2022-03-20'),
(104,'Sibusiso Khumalo','ICT',45000,'2021-08-10'),
(105,'Nomvula Zulu','Marketing',36000,'2024-02-18'),
(106,'Bongani Ndlovu','ICT',40000,'2023-11-05'),
(107,'Zanele Sithole','HR',34000,'2022-09-14'),
(108,'Mandla Mthembu','Finance',47000,'2021-12-01'),
(109,'Nokuthula Mkhize','ICT',39000,'2024-04-10'),
(110,'Sipho Cele','Operations',41000,'2023-01-09'),
(111,'Andile Hlophe','ICT',43000,'2022-05-25'),
(112,'Luyanda Nene','Marketing',35000,'2021-07-17'),
(113,'Sanele Zungu','Finance',52000,'2023-02-13'),
(114,'Nandi Maphumulo','ICT',46000,'2024-05-30'),
(115,'Themba Gwala','HR',33000,'2022-01-21'),
(116,'Busisiwe Ngcobo','Operations',37000,'2021-10-08'),
(117,'Vusi Madondo','ICT',48000,'2023-07-11'),
(118,'Hlengiwe Majozi','Marketing',39000,'2022-04-15'),
(119,'Mpho Kgosi','Finance',55000,'2024-03-01'),
(120,'Refilwe Molefe','ICT',44000,'2021-11-04'),
(121,'Jacob Mabena','Operations',36000,'2023-08-19'),
(122,'Kagiso Mokone','Finance',49000,'2022-06-28'),
(123,'Precious Maseko','ICT',47000,'2024-01-25'),
(124,'Brian Mnguni','Marketing',35000,'2023-09-02'),
(125,'Nompumelelo Xulu','HR',34000,'2021-03-16'),
(126,'Gift Zwane','ICT',51000,'2022-10-11'),
(127,'Innocent Mthethwa','Finance',53000,'2024-04-18'),
(128,'Lindokuhle Buthelezi','Operations',38000,'2023-05-20'),
(129,'Siyabonga Dube','ICT',45000,'2022-07-12'),
(130,'Zodwa Nkomo','Marketing',37000,'2021-09-29'),
(131,'Peter Khosa','Finance',50000,'2024-02-12'),
(132,'Mbalenhle Ncube','ICT',42000,'2023-03-14'),
(133,'Nomfundo Mbatha','HR',35000,'2022-08-20'),
(134,'Patrick Nene','Operations',40000,'2021-06-06'),
(135,'Sphamandla Gumede','ICT',47000,'2024-05-08'),
(136,'Asanda Maphosa','Finance',54000,'2023-10-30'),
(137,'Lucky Hadebe','Marketing',36000,'2022-02-17'),
(138,'Nolwazi Mokoena','ICT',46000,'2021-12-15'),
(139,'Musa Dlamini','Operations',39000,'2024-06-01'),
(140,'Khanyisile Zulu','HR',33000,'2023-04-09'),
(141,'Tshepo Matlala','Finance',51500,'2022-09-01'),
(142,'Buhle Ngobeni','ICT',44500,'2021-07-07'),
(143,'Lutho Mthembu','Marketing',36500,'2024-01-10'),
(144,'Aphiwe Ndlovu','Operations',41000,'2023-11-11'),
(145,'Sandile Hlongwane','ICT',50000,'2022-03-08'),
(146,'Samkelisiwe Maseko','Finance',52500,'2021-05-12'),
(147,'Palesa Khoza','HR',34500,'2024-03-22'),
(148,'Mfundo Nxumalo','ICT',48500,'2023-06-14'),
(149,'Lindelwa Ngema','Marketing',37500,'2022-01-19'),
(150,'Melusi Zondo','Operations',40500,'2021-08-24');

INSERT INTO employees
SELECT
    151 + ROW_NUMBER() OVER (ORDER BY SEQ4()) AS employee_id,
    'Employee_' || ROW_NUMBER() OVER (ORDER BY SEQ4()) AS employee_name,
    CASE UNIFORM(1,5,RANDOM())
        WHEN 1 THEN 'ICT'
        WHEN 2 THEN 'Finance'
        WHEN 3 THEN 'HR'
        WHEN 4 THEN 'Marketing'
        ELSE 'Operations'
    END AS department,
    UNIFORM(30000,60000,RANDOM()) AS salary,
    DATEADD(DAY, -UNIFORM(1,1000,RANDOM()), CURRENT_DATE()) AS hire_date
FROM TABLE(GENERATOR(ROWCOUNT => 50));

DELETE FROM employees
WHERE employee_id = 100;


INSERT INTO employees (
    employee_id,
    employee_name,
    department,
    salary,
    hire_date
)
VALUES (
    201,
    'Philasande Zungu',
    'Finance',
    42000,
    '2024-06-15'
);

DELETE FROM employees
WHERE employee_id BETWEEN 152 AND 201;


CREATE SCHEMA IF NOT EXISTS bronze;

ARC_EMPLOYEE_MANAGEMENT_SYSTEM.BRONZE.EMPLOYEESARC_EMPLOYEE_MANAGEMENT_SYSTEM.BRONZE.EMPLOYEESALTER TABLE employees
RENAME TO ARC_EMPLOYEE_MANAGEMENT_SYSTEM.bronze.employees;

SELECT * FROM employees;ARC_EMPLOYEE_MANAGEMENT_SYSTEM.BRONZE