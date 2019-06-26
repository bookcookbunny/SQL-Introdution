select * from tabs;

select * from emp;  --14행
select * from dept;  -- 4행

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


--셀프 조인(self join)은 하나의 테이블(자신)을 대상으로 조인하는 것을 말한다.

select * from emp;
-- emp 테이블을 다실 emp 테이블과 중복으로 조인하게 되면 조인에 참여하는 속성명이 같아지는 문제가 생기는데
-- 이 때는 별칭(alias)을 사용한다.

-- emp staff, emp manager
-- BLAKE(7698)이 관리하는 부하사원의 이름과 직급을 출력하시오.

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




