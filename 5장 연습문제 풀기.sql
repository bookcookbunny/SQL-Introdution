--연습문제(p125)

--Q1
SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO
FROM EMP
WHERE ENAME LIKE '%S';

--Q2
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30
AND JOB = 'SALESMAN';

--Q3

--1) 집합 연산자를 사용하지 않은 방식
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE (DEPTNO = 20
  OR DEPTNO = 30)
  AND SAL > 2000 ;
 
--2) 집합 연산자를 사용한 방식 
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE SAL > 2000
  AND DEPTNO = 20
  
UNION

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE SAL > 2000
  AND DEPTNO = 30;
  
--Q4

--  i)
SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO
FROM EMP
WHERE NOT (SAL >= 2000
  AND SAL <= 3000);
  
--  ii)
SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO
FROM EMP
WHERE SAL < 2000
  OR SAL > 3000;

--  iii)
SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO
FROM EMP
WHERE SAL NOT BETWEEN 2000 AND 3000;

--Q5

--  i)
SELECT ENAME, EMPNO, SAL, DEPTNO
FROM EMP
WHERE ENAME LIKE '%E%'
AND SAL NOT BETWEEN 1000 AND 2000
AND DEPTNO = 30;

--  ii)
SELECT ENAME, EMPNO, SAL,DEPTNO
FROM EMP
WHERE ENAME LIKE '%E%'
AND (SAL < 1000 OR SAL > 2000)
AND DEPTNO = 30;

--Q6

SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO
FROM EMP
WHERE COMM IS NULL
  AND MGR IS NOT NULL
  AND (JOB = 'MANAGER'
    OR JOB = 'CLERK')
  AND ENAME NOT LIKE '_L%'; 