select * from tabs;

select * from emp;  --14��
select * from dept;  -- 4��

select e.EMPNO,e.ENAME, e.JOB,e.MGR, e.HIREDATE, e.SAL, e.COMM, e.DEPTNO, d.DNAME, d.LOC
from emp e,dept d
where e.deptno=d.DEPTNO and e.sal>=3000;  




select e.empno, e.ename, e.sal, d.deptno, d.loc
from emp e, dept d
where e.DEPTNO=d.DEPTNO and e.sal <=2500 and e.empno <=9999;


select * from salgrade;

select * 
from emp e, salgrade s
where e.sal between s.losal and s.hisal;


--���� ����(self join)�� �ϳ��� ���̺�(�ڽ�)�� ������� �����ϴ� ���� ���Ѵ�.

select * from emp;
-- emp ���̺��� �ٽ� emp ���̺�� �ߺ����� �����ϰ� �Ǹ� ���ο� �����ϴ� �Ӽ����� �������� ������ ����µ�
-- �� ���� ��Ī(alias)�� ����Ѵ�.

-- emp staff, emp manager
-- BLAKE(7698)�� �����ϴ� ���ϻ���� �̸��� ������ ����Ͻÿ�.

select staff.ename, staff.job
from emp staff, emp manager
where staff.mgr=manager.empno and manager.ename like 'BLAKE';


--left outer join

select e1.EMPNO, e1.ENAME, e1.MGR, e2.empno as mgr_empno, e2.ename as mgr_ename
from emp e1, emp e2
where e1.mgr=e2.empno(+);

select e1.EMPNO, e1.ENAME, e1.MGR, e2.empno as mgr_empno, e2.ename as mgr_ename
from emp e1, emp e2
where e1.mgr(+)=e2.empno;


select e.EMPNO, e.ENAME, e.job, e.mgr, e.hiredate, e.sal, e.comm, e.deptno, d.dname, d.loc
from emp e join dept d on (e.deptno=d.deptno)
order by e.deptno,empno;



select e1.EMPNO, e1.ENAME, e1.MGR, e2.empno as mgr_empno, e2.ename as mgr_ename
from emp e1 full outer join  emp e2 on (e1.mgr=e2.empno);



select * from tabs;



--1

select d.deptno, d.dname, e.empno, e.ename, e.sal
from emp e, dept d
where e.deptno=d.deptno and sal>2000
order by d.deptno, d.dname;

--2
select e.deptno, d.dname, trunc(avg(SAL),0), max(sal), min(sal), count(*)
from emp e, dept d
where e.deptno=d.deptno 
group by d.DNAME, e.deptno
order by deptno;

--3
select d.deptno, d.dname, e.empno, e.ename, e.job, e.sal
from emp e right outer join dept d on (e.deptno=d.deptno)
order by d.deptno, e.ename;


--4
select d.deptno, d.dname, e.empno, e.ename, e.mgr, e.sal, e.deptno, s.losal, s.hisal, s.grade, e2.empno, e2.ename
from emp e right outer join dept d on (e.deptno=d.deptno) 
           left outer join salgrade s on(e.sal between s.losal and s.hisal) 
           left outer join emp e2 on (e.mgr=e2.empno)
order by d.deptno, e.empno;




