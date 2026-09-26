use exmpl;


CREATE TABLE Employees4 (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Department VARCHAR(30),
    JobRole VARCHAR(30),
    Salary DECIMAL(10,2),
    Experience INT,
    City VARCHAR(30),
    JoiningDate DATE
);

INSERT INTO Employees4
(EmployeeID, EmployeeName, Gender, Age, Department, JobRole, Salary, Experience, City, JoiningDate)
VALUES
(101, 'Arun Kumar', 'Male', 28, 'IT', 'Developer', 45000, 3, 'Kochi', '2023-01-15'),
(102, 'Anjali S', 'Female', 25, 'HR', 'HR Executive', 35000, 2, 'Calicut', '2024-03-10'),
(103, 'Rahul P', 'Male', 32, 'Finance', 'Accountant', 50000, 6, 'Trivandrum', '2020-07-20'),
(104, 'Fathima K', 'Female', 29, 'IT', 'Data Analyst', 55000, 4, 'Kochi', '2022-06-12'),
(105, 'Nikhil Raj', 'Male', 24, 'Sales', 'Sales Executive', 30000, 1, 'Kannur', '2025-01-05'),
(106, 'Sneha M', 'Female', 31, 'IT', 'Data Scientist', 75000, 7, 'Kollam', '2019-09-18'),
(107, 'Adil A', 'Male', 27, 'Marketing', 'Marketing Executive', 40000, 3, 'Malappuram', '2023-04-25'),
(108, 'Meera Joseph', 'Female', 36, 'Finance', 'Financial Analyst', 65000, 9, 'Kochi', '2017-11-30'),
(109, 'Vishnu V', 'Male', 26, 'IT', 'Developer', 48000, 3, 'Thrissur', '2023-08-14'),
(110, 'Hiba N', 'Female', 30, 'HR', 'HR Manager', 60000, 8, 'Calicut', '2018-05-22'),
(111, 'Akhil Das', 'Male', 34, 'Sales', 'Sales Manager', 58000, 7, 'Kochi', '2019-02-11'),
(112, 'Riya P', 'Female', 23, 'Marketing', 'Content Executive', 28000, 1, 'Kollam', '2025-06-01'),
(113, 'Jithin K', 'Male', 29, 'IT', 'Tester', 42000, 4, 'Kochi', '2022-10-10'),
(114, 'Asha Thomas', 'Female', 33, 'Finance', 'Accountant', 47000, 5, 'Trivandrum', '2021-03-15'),
(115, 'Suhail M', 'Male', 27, 'Sales', 'Sales Executive', 32000, 2, 'Calicut', '2024-08-19');

select * from Employees4;

select * from Employees4 WHERE Department = 'IT';

select * from Employees4 WHERE Salary > 50000;

select * from Employees4 WHERE Department = 'IT' AND Experience > 3;

select * from Employees4 where City = 'Kochi' or City = 'Calicut';

select * from Employees4 where Age between 25 and 30;

select * from Employees4 where EmployeeName like 'A%';

select * from Employees4 order by Salary desc;

select EmployeeName, Salary as CurrentSalary, Salary * 12 as AnnualSalary from Employees4;

select avg(Salary) as AverageSalary from Employees4;

select Department, avg(Salary) as AverageSalary from Employees4 group by Department having avg(Salary) > 45000;