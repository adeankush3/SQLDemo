CREATE TABLE EMPLOYEE_PayrollService (
	Id int NOT NULL IDENTITY(1,1),
	Name varchar(100),
	Salary decimal,
	StartDate date,
	Primary KEY(Id),
);
insert into EMPLOYEE_PayrollService(Name,Salary,StartDate) Values('Ankush',2000,'2022/03/04'),('Ade',2100,'2022/02/03'),('Hariprasad',2200,'2020/07/02');
select * from EMPLOYEE_PayrollService where StartDate between CAST ('06/03/2022' As date) and convert(varchar, getdate(), 5);
select * from EMPLOYEE_PayrollService;
Truncate Table EMPLOYEE_PayrollService;
Alter table EMPLOYEE_PayrollService add Gender varchar(30);
Alter table EMPLOYEE_PayrollService add PhoneNumber varchar(50),Adress varchar(255),Department varchar(255);
Alter table EMPLOYEE_PayrollService add BasicPay Decimal,Deduction 
update EMPLOYEE_PayrollService set Gender ='M' where id>=1 and id<=5;
select AVG(Salary) from EMPLOYEE_PayrollService;
select MIN(Salary) from EMPLOYEE_PayrollService;
select COUNT(Salary) from EMPLOYEE_PayrollService;

select GETDATE();
update EMPLOYEE_PayrollService set PhoneNumber='9689902117',Name='Walki TQ.Hadgaon',Department='Comp Engineer' where id=1;
update EMPLOYEE_PayrollService set PhoneNumber='9689902217',Name='Walki TQ.Hadgaon',Department='Mech Engineer'where id=2;
update EMPLOYEE_PayrollService set PhoneNumber='9689902317',Name='Walki TQ.Hadgaon',Department='Electrcal Engineer' where id=3;
Alter Table EMPLOYEE_PayrollService drop column Salary;
select convert(varchar, getdate(), 5)