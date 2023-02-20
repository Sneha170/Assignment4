show databases;
use employee;
select * from Employee where DeptNo in(10,30);
Select d.Dname,d.DeptNo,d.Location from Department d,Employee e where 
e.DeptNo=d.DeptNo Group by e.DeptNo having count(*)>=1;
Select * from Employee where Ename like 'S%';
Select * from Employee where year(“2023-02-18”)-year(Hire_date)>=2;
Update Employee set Ename=replace(Ename,'a','#');
Select e.Ename,m.Ename from Employee e join Employee m on(e.Mgr=m.EmpNo);
Select d.Dname, sum(Sal) from Employee e,Department d where e.DeptNo=d.DeptNo 
group by e.DeptNo;
Select e.EmpNo,e.Ename,e.Sal,e.Mgr,e.Commission,e.Hire_date,d.Dname,d.Location 
from Employee e,Department d where e.DeptNo=d.DeptNo;
update Employee set Sal=Sal+(Sal*10/100);
Select * from Employee, Department where Employee.DeptN0=Department.DeptNo and 
Department.Location=”Chennai”;
Delete from Employee where DeptNo=30;
select Ename,(Sal+Commission)as Gross_salary from Employee;
Alter table Employye Modify Ename varchar(250);
Select Now();
Create table Student(Name varchar(30),USN varchar(30),DOB date,Address 
varchar(30),Phone_number int(30));
Select count(*) from Employee where Sal>=10000;
Select min(Sal),max(Sal),avg(Sal) from Employee;
Select Count(*),d.Location from Employee e,Department d where e.DeptNo=d.DeptNo 
group by d.Location;
Select * from Employee order by Ename Desc;
create table EMP_BKP as select * from Employee;
Select substring(Ename,1,3) from Employee;Select substring(Ename,1,3) from Employee;
Select * from Employee where Ename like'S%';
select e.Ename,e.EmpNo,e.Hire_date,e.Commission,e.Sal,e.Mgr,e.DeptNo from 
Employee e,Department d where e.DeptNo=d.DeptNo and d.Location="Bangalore";
Select * from Employee where Ename between 'a' and 'k';
select e.Ename,e.EmpNo,e.Hire_date,e.Commission,e.DeptNo,e.Mgr from Employee e 
join Employee m on(e.Mgr=m.EmpNo) and m.Ename="Stefen";
Select Mgr,Count(*) from Employee group by Mgr having count(*)>=3;
Select d.Dname,d.Location,e.EmpNo,e.Ename,e.Commission,e.Hire_date,e.Sal,e.DeptNo,
e.Mgr from Employee e,Department d order by Sal limit 1,2;
select * from Employee where EmpNo in(select Mgr from Employee);
select EmpNo,Ename,Hire_date,Commission,Sal,Mgr,Year("2023-02-18")-
year(Hire_date) as Experience from Employee;
select * from Employee,Department where EmpNo in(select Mgr from Employee) and 
Commission<1000 and Department.Location="Delhi";
select * from employee where Hire_date<"2000-01-01";
