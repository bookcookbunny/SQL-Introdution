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
--where avg(sal)>=2000, ������
group by deptno, job
having avg(sal)>=2000
order by deptno, job;

--where ���� ������� �ʰ� having ���� ����� ���

select deptno, job, avg(sal)
from emp
group by deptno, job
having avg(sal)>=2000
order by deptno, job;

--where ���� having ���� ��� ����� ���

select deptno, job, avg(sal)
from emp
where sal <=3000
group by deptno, job
having avg(sal)>=2000
order by deptno, job;


