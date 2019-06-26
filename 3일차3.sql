
select *
from emp
where sal>2975;


select sal from emp where ename='JONES';



select *
from emp
where sal>(select sal from emp where ename='JONES');



select comm 
from emp
where ename='ALLEN';




select *
from emp
where comm>(select comm 
            from emp
            where ename='ALLEN');
            
            
            
            
            
select * from emp where hiredate;

select hiredate from emp where ename='SCOTT';



select * from emp where hiredate > (select hiredate from emp where ename='SCOTT');


select * from emp where hiredate < (select hiredate from emp where ename='SCOTT');




select * 
from emp e, dept d
where e.deptno=d.deptno and e.deptno=20 and e.sal>(select avg(sal) from emp);


select max(sal) from emp group by deptno;

select * from emp where sal in (select max(sal) from emp group by deptno);


select max(sal) from emp group by deptno;
select * from emp where sal =any(select max(sal) from emp group by deptno);


select * from emp where sal =some(select max(sal) from emp group by deptno);

(select sal from emp where deptno =30);

select * from emp where sal < any (select sal from emp where deptno =30) order by sal, empno;


select * from emp where sal < (select max(sal) from emp where deptno =30) order by sal, empno;


select * from DEPT;



select * from emp where (deptno, sal) in (select deptno, max(sal) from emp group by deptno);

select * from emp where deptno=10;
select * from dept;

select e10.empno,e10.ename, e10.deptno, d.dname, d.loc
from (select * from emp where deptno=10) e10, (select * from dept) d
where e10.deptno= d.deptno;


select * from dept;


with 
e10 as (select * from emp where deptno=10),
d   as (select * from dept)
select e10.empno, e10.ename, e10.deptno, d.dname, d.loc
from e10,d
where e10.deptno = d.deptno;



select * from emp e1 where sal >  (select min(sal) from emp e2 where e2.deptno = e1.deptno) order by deptno, sal;


--select min(sal) from emp e2 where e2.deptno = e1.deptno order by deptno, sal;

select grade from salgrade;




select empno, ename, job, sal, (select grade from salgrade where e.sal between losal and hisal) as salgrade, deptno,
                                (select dname from dept where e.deptno = deptno) as dname 
from emp e;

















