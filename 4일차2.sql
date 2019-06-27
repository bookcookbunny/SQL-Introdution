--
--select * from dept;
--
--CREATE TABLE DEPT_TEMP as select * from dept;
--
--
--
--select * from DEPT_TEMP;
--
--create table EMP_TEMP10 as select * from emp;
--
--select * from EMP_TEMP10;
--
--
--select * from tabs;
--
--
--insert into DEPT_TEMP(DEPTNO, dname, LOC) values (50, 'DATABASE', 'SEOUL');
--select * from DEPT_TEMP;
--
--
--
--insert into DEPT_TEMP values(60, 'NETWORK', 'BUSAN');
--
--select * from DEPT_TEMP;
--
--insert into dept_temp(DEPTNO, dname,loc) values (70, 'WEB', NULL);
--
--select * from DEPT_TEMP;
--
--
--
--insert into DEPT_TEMP (DEPTNO, dname, LOC) values (80,'MOBILE','');
--
--select * from DEPT_TEMP;
--
--
--insert into dept_temp(DEPTNO, loc) values(90, 'INCHON');
--
--select * from DEPT_TEMP;
--
--
--
--create table emp_temp as select * from emp where 1<>1;
--
--select * from emp_temp;
--
--desc emp_temp;
--
--insert into emp_temp(empno, ename, JOB, mgr, hiredate, sal, comm, deptno) 
--values(9999,'홍길동','PRESIDENT',NULL,'2001/01/01', 5000, 1000, 10);
--select * from emp_temp;
--
--insert into emp_temp(empno, ename, JOB, mgr, hiredate, sal, comm, deptno) 
--values(1111,'성춘향','MANAGER',9999,'2001-01-01', 4000, NULL, 20);
--select * from emp_temp;
--
--
--
--insert into emp_temp(empno, ename, JOB, mgr, hiredate, sal, comm, deptno) 
--values(2111,'이순신','MANAGER',9999,to_date('07/01/2001','DD/MM/YYYY'), 4000, NULL, 20);
--
--select * from emp_temp;
--
--
--
--
--insert into emp_temp(empno, ename, JOB, mgr, hiredate, sal, comm, deptno) 
--values(3111,'심청이','MANAGER',9999,SYSDATE, 4000, NULL, 30);
--
--
--select * from emp_temp;

select  e.EMPNO, e.ename, e.job, e.mgr, e.hiredate, e.sal, e.comm, e.deptno
from emp e, salgrade s
where e.sal between s.losal and s.hisal and s.grade=1;




insert into emp_temp(empno, ename, JOB, mgr, hiredate, sal, comm, deptno)
select  e.EMPNO, e.ename, e.job, e.mgr, e.hiredate, e.sal, e.comm, e.deptno
from emp e, salgrade s
where e.sal between s.losal and s.hisal and s.grade=1;


select * from EMP_TEMP;



create table dept_temp2 as select * from dept;



select * from DEPT_TEMP2;







update DEPT_TEMP2
set loc='SEOUL';



select * from DEPT_TEMP2;

rollback;

select * from DEPT_TEMP2;


update DEPT_TEMP2 set dname='DATABASE', LOC='SEOUL' where deptno=40;




select * from dept_temp2;



select dname, loc from dept where deptno=40;

update DEPT_TEMP2
set (dname,loc) = (select dname, loc from dept where deptno=40)
where deptno=40;

select * from DEPT_TEMP2;

select dname from dept where deptno=40;

select loc from dept where deptno=40;

update DEPT_TEMP2
set dname = (select dname from dept where deptno=40),
    loc = (select loc from dept where deptno=40)
where deptno=40;


update DEPT_TEMP2
set loc='SEOUL'
where deptno=(select deptno from DEPT_TEMP where dname='OPERATIONS');


select * from dept_temp2;



create table emp_temp2
as select * from emp;


select * from emp_temp2;


delete from emp_temp2 where job='MANAGER';


select * from emp_temp2;


select e.empno
from emp_temp2 e, salgrade s
where e.sal between s.losal and s.hisal and s.grade=2 and deptno=30;

select * from EMP_TEMP2;
select * from salgrade;


select e.empno
from emp_temp2 e, salgrade s
where e.sal between s.losal and s.hisal and s.grade=2 and deptno=30;


delete from EMP_TEMP2
where empno in (select e.empno
                from emp_temp2 e, salgrade s
                where e.sal between s.losal and s.hisal and s.grade=2 and deptno=30);
                


select * from EMP_TEMP2;





--1

create table chap10hw_emp as select * from emp;

create table chap10hw_dept as select * from dept;

create table chap10hw_salgrade as select * from salgrade;


select * from CHAP10HW_DEPT;

desc CHAP10HW_DEPT;

insert into CHAP10HW_DEPT(deptno, dname, loc) values(50, 'ORACLE', 'BUSAN');

select * from CHAP10HW_DEPT;

insert into CHAP10HW_DEPT(deptno, dname, loc) values(50, 'ORACLE', 'BUSAN');



insert into CHAP10HW_DEPT(deptno, dname, loc) values(60, 'SQL', 'ILSAN');
insert into CHAP10HW_DEPT(deptno, dname, loc) values(70, 'SELECT', 'INCHEON');
insert into CHAP10HW_DEPT(deptno, dname, loc) values(80, 'DML', 'BUNDANG');


select * from CHAP10HW_DEPT;




--2
select * from CHAP10HW_emp;

insert into CHAP10HW_emp(empno, ename, job,mgr, hiredate, sal, comm, deptno) values(7201, 'TEST_USER1', 'MANAGER', 7788,to_date('2016-01-02','YYYY-MM-DD'),4500,NULL, 50);
insert into CHAP10HW_emp(empno, ename, job,mgr, hiredate, sal, comm, deptno) values(7202, 'TEST_USER2', 'CLERK', 7201, TO_DATE('2016-02-21', 'YYYY-MM-DD'), 1800, NULL, 50);

insert into CHAP10HW_emp(empno, ename, job,mgr, hiredate, sal, comm, deptno) values(7203, 'TEST_USER3', 'ANALYST', 7201, TO_DATE('2016-04-11', 'YYYY-MM-DD'), 3400, NULL, 60);
insert into CHAP10HW_emp(empno, ename, job,mgr, hiredate, sal, comm, deptno) values(7204, 'TEST_USER4', 'SALESMAN', 7201, TO_DATE('2016-05-31', 'YYYY-MM-DD'), 2700, 300, 50);
insert into CHAP10HW_emp(empno, ename, job,mgr, hiredate, sal, comm, deptno) values(7205, 'TEST_USER5', 'CLERK', 7201, TO_DATE('2016-07-20', 'YYYY-MM-DD'), 2600, NULL, 70);
insert into CHAP10HW_emp(empno, ename, job,mgr, hiredate, sal, comm, deptno) values(7206, 'TEST_USER6', 'CLERK', 7201, TO_DATE('2016-09-08', 'YYYY-MM-DD'), 2600, NULL, 70);
insert into CHAP10HW_emp(empno, ename, job,mgr, hiredate, sal, comm, deptno) values(7207, 'TEST_USER7', 'LECTURER', 7201, TO_DATE('2016-10-28', 'YYYY-MM-DD'), 2300, NULL, 80);
insert into CHAP10HW_emp(empno, ename, job,mgr, hiredate, sal, comm, deptno) values(7208, 'TEST_USER8', 'STUDENT', 7201, TO_DATE('2016-03-09', 'YYYY-MM-DD'), 1200, NULL, 80);



select * from CHAP10HW_emp;

select *  from CHAP10HW_emp where EMPNO=7203;

delete from CHAP10HW_emp where EMPNO=7203;

insert into CHAP10HW_emp(empno, ename, job,mgr, hiredate, sal, comm, deptno) values(7203, 'TEST_USER3', 'ANALYST', 7201, TO_DATE('2016-04-11', 'YYYY-MM-DD'), 3400, NULL, 60);

select * from CHAP10HW_emp;






--3


select * from CHAP10HW_EMP where deptno=50;



select avg(sal) from CHAP10HW_EMP group by deptno having deptno=50;



select empno, ename, job, mgr, hiredate, sal, comm, deptno 
from CHAP10HW_EMP
where sal > (select avg(sal) from CHAP10HW_EMP group by deptno having deptno=50);


select empno
from CHAP10HW_EMP
where sal > (select avg(sal) from CHAP10HW_EMP group by deptno having deptno=50);


select ename
from CHAP10HW_EMP
where empno in (select empno
                from CHAP10HW_EMP
                where sal > (select avg(sal) from CHAP10HW_EMP group by deptno having deptno=50));
                


update CHAP10HW_EMP
set deptno=70
where empno in (select empno
                from CHAP10HW_EMP
                where sal > (select avg(sal) from CHAP10HW_EMP group by deptno having deptno=50));
                


select * from CHAP10HW_EMP;


select * from CHAP10HW_EMP where sal > (select avg(sal) from CHAP10HW_EMP group by deptno having deptno=50) and 
deptno=50; 


select * from CHAP10HW_EMP where deptno=70;




--4

select * from CHAP10HW_EMP;

select * from CHAP10HW_EMP where DEPTNO=60;

update CHAP10HW_EMP
set deptno=60
where empno=7204;




select * from CHAP10HW_EMP where deptno=60;


select *
from CHAP10HW_EMP
where hiredate > (select hiredate from CHAP10HW_EMP where deptno=60);


select * from CHAP10HW_EMP;

update CHAP10HW_EMP
set sal = sal*1.1,
    deptno = 80
where hiredate > (select hiredate from CHAP10HW_EMP where deptno=60);


select * from CHAP10HW_EMP where deptno=80;



update CHAP10HW_EMP
set sal = sal/1.1
where hiredate > (select hiredate from CHAP10HW_EMP where deptno=60);



select * from CHAP10HW_EMP where deptno=80;



--5

select * from salgrade;

select e.EMPNO , e.ename, e.job, e.mgr, e.hiredate, s.sal, e.comm, e.deptno
from emp e , salgrade s
where e.sal between s.losal and s.hisal and s.grade=5;





select * from CHAP10HW_EMP where sal;



delete from CHAP10HW_EMP
where empno in (select e.empno from CHAP10HW_EMP e, CHAP10HW_salgrade s where e.sal between s.losal and s.hisal and s.grade=5);



































