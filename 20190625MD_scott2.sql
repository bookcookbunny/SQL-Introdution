select ename, upper(ename), lower(ename), INITCAP(ename)
from emp;

select * from emp where upper(ename) = upper('scott');

select * from emp where upper(ename) like upper('%scott%');

--���ڿ� ���� ���ϱ�
select ename, length(ename) from emp;

select ename from emp where length(ename)>=5;

select length('�ѱ�') from dual;


--dummy table

select length('�ѱ�'), lengthb('�ѱ�') from dual;
--lengthb ���ڿ��� ����Ʈ ���� ��ȯ


select job from emp;
select job, substr(job, 1, 2) from emp;
--substr ���ڿ��� �Ϻθ� �����ϴ� �Լ� substr(job, 1, 2): ù ��°���� �����ؼ� �� ���� ����

select job, substr(job, 3, 2) from emp;

select job, substr(job, 5) from emp;
--5��°���� �����ؼ� ������ �� ����