select ename, upper(ename),lower(ename),INITCAP(ename)
from emp;

select * from emp where upper(ename)=upper('scott');



select * from emp where upper(ename) like upper('%scott%');



select ename, length(ename)from emp;

select ename, length(ename) from emp  where length(ename)>=5;


select length('한글') from dual; 

--dummy table

select length('한글'),  lengthb('한글') from dual; 
--lengthb 함수는 문자열의 바이트 수를 반환


select job , substr(job, 1,2)  from emp;

select job , substr(job, 3,2)  from emp;

select job , substr(job, 5)  from emp;

select -length(job) from emp;

select job, substr(job, -length(job)) from emp;

select job, substr(job, -length(job)) from emp;

select job, substr(job, -3) from emp;



--instr 문자열 데이터 안에서 특정 문자 위치를 찾는 함수

select instr('HELLO, ORACLE!', 'L') from dual;

select instr('HELLO, ORACLE!', 'L', 5) from dual;

select instr('HELLO, ORACLE!', 'L', 2,2) from dual;


select * from emp where instr(ename,'S')>0;

select * from emp where ename like '%S%';

select '010-1234-5678' , replace('010-1234-5678', '-', '') from dual;

select '010-1234-5678' , replace('010-1234-5678', '-') from dual;


select 'Oracle', LPAD('Oracle', 10) from dual;
select 'Oracle', RPAD('Oracle', 10) from dual;

select 'Oracle', RPAD('Oracle', 10, '#') from dual;

select rpad('971225-', 14, '*') from dual;


select concat(empno, concat('/', ename)) from emp;






select '[' || trim(' __Oracle__ ') || ']' as trim from dual;


select '[' || trim( leading from ' __Oracle__ ') || ']' as trim from dual;

select '[' || trim( trailing from ' __Oracle__ ') || ']' as trim from dual;


select '[' || trim(both from ' __Oracle__ ') || ']' as trim from dual;


select '[' || trim(' _Oracle_ ') || ']' as trim from dual;

select '[' || ltrim('<_Oracle_>', '<_') || ']' as trim from dual;
select '[' || rtrim(' _Oracle_ ', '<_') || ']' as trim from dual;





select '[' || rtrim('<_Oracle_>', '_>') || ']' as trim from dual;




select mod(15,6)  from dual;


select sysdate-1 from dual;

select sysdate+1 from dual;




select sysdate, add_months(sysdate,3) from dual;

select * from emp;

select sysdate, add_months(hiredate,120) from emp;

select sysdate from dual;

select ename, hiredate, sysdate
from emp
where add_months(hiredate,500) > sysdate;




select empno, ename, hiredate, sysdate, months_between(hiredate, sysdate) as month1, 
months_between(sysdate, hiredate) as month2,
trunc(months_between(sysdate, hiredate)) as month3
from emp;


select sysdate, next_day(sysdate,'월요일'), last_day(sysdate) from dual;

select systimestamp from dual;

select to_char(systimestamp, 'YYYY-MM-DD HH:MI:SSFF') from dual;

select to_timestamp('20130906152837456', 'YYYYMMDDHH24MISSFF') from dual;

select sysdate, 
round(sysdate,'CC'),
round(sysdate,'YYYY'),
round(sysdate,'CC'),
round(sysdate,'CC')
from dual;


select sysdate from dual;

select systimestamp from dual;

select to_char(sysdate,'YYYY/MM/DD PM HH24:MI:SS') from dual;









select sysdate,
to_char(sysdate,'MM'), 
to_char(sysdate,'MON'), 
to_char(sysdate,'month'), 
to_char(sysdate,'dd'), 
to_char(sysdate,'dy'),
to_char(sysdate,'day')
from dual;









select sysdate,
to_char(sysdate,'mm'), 
to_char(sysdate,'mon', 'nls_date_language=korean'), 
to_char(sysdate,'mon', 'nls_date_language=japanese'), 
to_char(sysdate,'mon', 'nls_date_language=english'), 
to_char(sysdate,'month', 'nls_date_language=korean'), 
to_char(sysdate,'month', 'nls_date_language=japanese'), 
to_char(sysdate,'month', 'nls_date_language=english') from dual;

select sysdate,
to_char(sysdate,'HH24:MI,SS'),
to_char(sysdate,'HH12:MI,SS AM'),
to_char(sysdate,'HH:MI:SS P.M.') from dual;



select sal,
to_char(sal, '$999,999'), 
to_char(sal, 'L999,999'), 
to_char(sal, '999,999.00'), 
to_char(sal, '000,999,999.00'), 
to_char(sal, '000999999.99'), 
to_char(sal, '999,999,00') from emp;



select 1300 - '1500', '1300' + 1500 from dual;



select '1300' - '1500' from dual;


select to_number('1,300', '999,999') from dual;


select to_number('1,300', '999,999') - to_number('1,500','999,999') from dual;



select to_date('2049-12-10','YY/MM/DD') from dual;

select to_date('49/12/10','YY/MM/DD') from dual;

select to_date('49/12/10','YY/MM/DD') from dual;

select to_date('49/12/10','YY/MM/DD') from dual;

select empno, ename, sal, comm, sal+comm, comm from emp;

select empno, ename, sal, nvl(comm,0), nvl(sal+comm,0), nvl(comm,0) from emp;


select empno, ename, comm, nvl2(comm, '0','X'), nvl2(comm, sal*12+comm, sal*12) as annsal from emp;


select empno, ename, job, sal,
  decode(job,
  'MANAGER', sal*1.1,
  'SALESMAN', sal*1.05,
  'ANAYLIST', sal,
  sal*1.03)
from emp;



select empno, ename, job, sal,
  case job
    when 'MANAGER' then sal*1.1
   when 'SALESMAN' then sal*1.05
   when 'ANAYLIST' then sal
   else sal*1.03
  end as upsal
from emp;


--6-1

select substr(empno, 1,2)from emp;
select rpad(substr(empno, 1,2), 4, '*') from emp;



select  empno, ename from emp;


select  empno,  rpad(substr(empno, 1,2), 4, '*')   as MASKING_EMPNO, ename, 
        rpad(substr(ename, 1,1), length(ename), '*') as MASKING_ENAME
from emp
where length(ename)>=5 and length(ename) <6;




--6-2

select empno, ename,sal, trunc(sal/21.5,2) as DAY_PAY,  round((sal/21.5)/8,1) as TIME_PAY from EMP;



--6-3

select to_char(sysdate,'YYYYMMDD') from dual;

select to_char(next_day(add_months(hiredate,3),'월요일'), 'YYYYMMDD') from emp;

select to_date(to_char(next_day(add_months(hiredate,3),'월요일')),'YYYY/MM/DD')  from emp;


select empno, ename, hiredate, to_char(next_day(add_months(hiredate,3),'월요일'), 'YYYY-MM-DD') as R_JOB, nvl(to_char(comm),'N/A')
from emp;

-- 6-4

select empno, ename, nvl(mgr,to_char(0)),
case
when mgr is null then '0000'
when substr(mgr,1,2)='75' then '5555'
when substr(mgr,1,2)='76' then '6666'
when substr(mgr,1,2)='77' then '7777'
when substr(mgr,1,2)='78' then '8888'
else to_char(mgr)
end as CHG_MGR
from emp;



select empno, ename, replace(nvl2(mgr,mgr,to_char('')), ' '),
case
when mgr is null then '0000'
when substr(mgr,1,2)='75' then '5555'
when substr(mgr,1,2)='76' then '6666'
when substr(mgr,1,2)='77' then '7777'
when substr(mgr,1,2)='78' then '8888'
else to_char(mgr)
end as CHG_MGR
from emp;




select deptno, job, count(*), max(sal), sum(sal), avg(sal)
from EMP
group by deptno, job
order by deptno, job;

select deptno, job, count(*)
from EMP
group by DEPTNO, rollup(JOB);











select deptno, job, count(*)
from EMP
group by grouping sets(deptno, job)
order by deptno, job;












select deptno, job, count(*), max(sal), sum(sal), avg(sal),
grouping(deptno), grouping(job)
from EMP
group by cube(deptno, job)
order by deptno, job;


select decode(grouping(deptno), 1, 'ALL_DEPT' , deptno) as deptno,
decode(grouping(deptno), 1, 'ALL_JOB' , job) as job,
count(*), max(sal), sum(sal), avg(sal)
from emp
group by cube(deptno,job)
order by deptno,job;



select deptno, job, count(*), sum(sal),
      grouping(deptno), grouping(job),
      grouping_id(deptno,job)
from emp
group by cube(deptno,job)
order by deptno,job;









select deptno, listagg(ename, ',') within group(order by sal desc) as enames
from emp
group by deptno;


select deptno, job, sal from emp;

select deptno, job, sal from emp;

select * 
from(select deptno, job, sal from emp)
pivot(max(sal)
for deptno in (10,20,30))
order by job;

select to_char(hiredate,'RRRR/MM/DD') from emp;

select next_day(to_char(hiredate,'RRRR/MM/DD'), 1) from emp;




select to_date('2018-07-14','YYYY-MM-DD') as todate1,
to_date('20180714','YYYY/MM/DD') as todate2
from dual;


SELECT DEPTNO,
       TRUNC(AVG(SAL)) AS AVG_SAL,
       MAX(SAL) AS MAX_SAL,
       MIN(SAL) AS MIN_SAL,
       COUNT(*) AS CNT
  FROM EMP
GROUP BY DEPTNO; 

SELECT JOB,
       COUNT(*)
  FROM EMP
GROUP BY JOB
HAVING COUNT(*) >= 3; 

SELECT TO_CHAR(HIREDATE, 'YYYY') AS HIRE_YEAR,
       DEPTNO,
       COUNT(*) AS CNT
  FROM EMP
GROUP BY TO_CHAR(HIREDATE, 'YYYY'), DEPTNO;

SELECT NVL2(COMM, 'O', 'X') AS EXIST_COMM,
       COUNT(*) AS CNT
  FROM EMP
GROUP BY NVL2(COMM, 'O', 'X'); 




SELECT nvl2(nvl2(DEPTNO,'', ' '),'', deptno),
       TO_CHAR(HIREDATE, 'YYYY') AS HIRE_YEAR,
       COUNT(*) AS CNT,
       MAX(SAL) AS MAX_SAL,
       SUM(SAL) AS SUM_SAL,
       AVG(SAL) AS AVG_SAL
  
FROM EMP
GROUP BY ROLLUP(DEPTNO, TO_CHAR(HIREDATE, 'YYYY')); 


select * from emp;

select staff.ENAME, staff.JOB
from emp staff, emp manager
where staff.MGR=manager.EMPNO and manager.ENAME like 'BLAKE';


 

SELECT NVL(null, '') FROM DUAL;

SELECT NVL2(null, '','  ') FROM DUAL;

select * from emp;

select * from salgrade;

select * from emp e, salgrade s;
--where e.sal between s.losal and s.hisal;


