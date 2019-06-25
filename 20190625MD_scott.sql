select * from tabs;

--집계함수 : SUM, AVG, MIN, MAX, COUNT (Ctrl + \ 누르면 주석 처리)(집계 함수 다섯 가지 외울 것!)

select * from orders;

select sum(SALEPRICE)총매출 from orders;
--select sum(SALEPRICE) as "총매출" from orders; 해도 같은 결과

--김연아 고객이 주문한 도서의 총 판매액

select * from tabs;

select * from customer;

select * from book;

select * from orders where custid = 2; --김연아의 커스트 아이디가 2번이고, orders 데이터에 이름이 아니라 커스트 아이디로 기재되어 있으므로. 


select sum(SALEPRICE) as 김연아매출 from orders where custid = 2;

select sum(SALEPRICE) 총합, avg(SALEPRICE) 평균, min(SALEPRICE) 최소값, max(SALEPRICE) 최대값
from orders;

select count(*) from orders;

--고객별로 주문한 도서의 총 수량과 총 판매액을 구하시오
--group by로 그룹화한 후 집계함수 사용

select custid, count(*), sum(SALEPRICE)
from orders
group by custid;

--가격이 8,000원 이상인 도서를 구매한 고객에 대하여 고객 별 주문 도서의 총 수량을 구하시오. 단, 두 권 이상 구매한 고객만 구한다.

select custid, count(*)
from ORDERS
where
group by custid
having count(*)>=2;
--having은 group by로 묶은 것에 대한 조건


select sum(distinct sal), sum(all sal) from emp;

selcet sal from emp;

select distinct sal from emp;

select comm from emp;

select sum(comm) from emp;

select count(*) from emp where deptno = 30;

select count(comm) from emp where comm is not null;


select * from emp;

select round(avg(sal),2), deptno
from emp
group by deptno
order by deptno;


select deptno, job, avg(sal)
from emp
group by deptno, job
order by deptno, job;

select deptno, job, avg(sal)
from emp
--where avg(sal)>=2000, 에러 남
group by deptno, job
having avg(sal)>=2000
order by deptno, job;

--where절을 사용하지 않고 having절만 사용한 경우
select deptno, job, avg(sal)
from emp
group by deptno, job
having avg(sal)>=2000
order by deptno, job;

--where절과 having절을 모두 사용한 경우

select deptno, job, avg(sal)
from emp
where sal <= 3000
group by deptno, job
having avg(sal)>=2000
order by deptno, job;
