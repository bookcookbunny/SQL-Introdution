select ename, upper(ename), lower(ename), INITCAP(ename)
from emp;

select * from emp where upper(ename) = upper('scott');

select * from emp where upper(ename) like upper('%scott%');

--문자열 길이 구하기
select ename, length(ename) from emp;

select ename from emp where length(ename)>=5;

select length('한글') from dual;


--dummy table

select length('한글'), lengthb('한글') from dual;
--lengthb 문자열의 바이트 수를 반환


select job from emp;
select job, substr(job, 1, 2) from emp;
--substr 문자열의 일부를 추출하는 함수 substr(job, 1, 2): 첫 번째에서 시작해서 두 글자 추출

select job, substr(job, 3, 2) from emp;

select job, substr(job, 5) from emp;
--5번째에서 시작해서 끝까지 다 추출