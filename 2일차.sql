select * from tabs;

select * from emp;

select sum(distinct sal), sum(all sal), sum(sal) from emp;


select sal from emp;

select distinct sal from emp;


select comm from emp;

select sum(comm) from emp;


select count(*) from emp where deptno=30;


select count(comm) from emp where comm is not null;

select * from emp;

select round(avg(sal),2), deptno
from emp
group by deptno
order by deptno;


select deptno, job, avg(sal)
from emp
--where avg(sal)>=2000, 에러남
group by deptno, job
having avg(sal)>=2000
order by deptno, job;

--where 절을 사용하지 않고 having 절만 사용한 경우

select deptno, job, avg(sal)
from emp
group by deptno, job
having avg(sal)>=2000
order by deptno, job;

--where 절과 having 절을 모두 사용한 경우

select deptno, job, avg(sal)
from emp
where sal <=3000
group by deptno, job
having avg(sal)>=2000
order by deptno, job;


