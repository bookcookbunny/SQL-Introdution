select * from tabs;

--�����Լ� : SUM, AVG, MIN, MAX, COUNT (Ctrl + \ ������ �ּ� ó��)(���� �Լ� �ټ� ���� �ܿ� ��!)

select * from orders;

select sum(SALEPRICE)�Ѹ��� from orders;
--select sum(SALEPRICE) as "�Ѹ���" from orders; �ص� ���� ���

--�迬�� ���� �ֹ��� ������ �� �Ǹž�

select * from tabs;

select * from customer;

select * from book;

select * from orders where custid = 2; --�迬���� Ŀ��Ʈ ���̵� 2���̰�, orders �����Ϳ� �̸��� �ƴ϶� Ŀ��Ʈ ���̵�� ����Ǿ� �����Ƿ�. 


select sum(SALEPRICE) as �迬�Ƹ��� from orders where custid = 2;

select sum(SALEPRICE) ����, avg(SALEPRICE) ���, min(SALEPRICE) �ּҰ�, max(SALEPRICE) �ִ밪
from orders;

select count(*) from orders;

--������ �ֹ��� ������ �� ������ �� �Ǹž��� ���Ͻÿ�
--group by�� �׷�ȭ�� �� �����Լ� ���

select custid, count(*), sum(SALEPRICE)
from orders
group by custid;

--������ 8,000�� �̻��� ������ ������ ���� ���Ͽ� �� �� �ֹ� ������ �� ������ ���Ͻÿ�. ��, �� �� �̻� ������ ���� ���Ѵ�.

select custid, count(*)
from ORDERS
where
group by custid
having count(*)>=2;
--having�� group by�� ���� �Ϳ� ���� ����


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
--where avg(sal)>=2000, ���� ��
group by deptno, job
having avg(sal)>=2000
order by deptno, job;

--where���� ������� �ʰ� having���� ����� ���
select deptno, job, avg(sal)
from emp
group by deptno, job
having avg(sal)>=2000
order by deptno, job;

--where���� having���� ��� ����� ���

select deptno, job, avg(sal)
from emp
where sal <= 3000
group by deptno, job
having avg(sal)>=2000
order by deptno, job;
