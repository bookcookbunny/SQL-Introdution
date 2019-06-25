select * from tabs;

--집계함수 : SUM, AVG,MIN,MAX,COUNT 

select * from orders;


select sum(SALEPRICE) 총매출 from orders;

--김연아 고객이 주문한 도서의 총 판매액

select * from tabs;

select * from customer;
select * from orders;

select * from book;


select * from orders where custid=2;


select sum(saleprice) as 김연아매출 from orders where custid=2;


select sum(saleprice) 총합, avg(saleprice)평균, min(saleprice)최소값,max(saleprice) 최대값
from orders;


select count(*) from orders;



--고객별로 주문한 도서의 총 수량과 총 판매액을 구하시오...

--group by로 그룹화한 후 집계함수 사용

select custid, count(*), sum(saleprice)
from orders
group by custid;

--가격이 8,000원 이상인 도서를 구매한 고객에 대하여 고객별 주문 도서의 총 수량을 구하시오. 단, 두 권 이상 구매한 고객만 구한다.

select custid, count(*)
from ORDERS
where saleprice>=8000
group by custid
having count(*)>=2;


--(1) 도서번호가 1인 도서의 이름
SELECT bookname FROM Book WHERE bookid=1;

--(2) 가격이 20,000원 이상인 도서의 이름
	SELECT bookname FROM Book WHERE price >= 20000;

select * from CUSTOMER;
select * from Orders;


--(3) 박지성의 총 구매액
	SELECT SUM(saleprice) 
	FROM Customer, Orders 
	WHERE Customer.custid=Orders.custid AND Customer.name LIKE '박지성';

--(4) 박지성이 구매한 도서의 수
	SELECT COUNT(*) FROM Customer, Orders 
	WHERE Customer.custid=Orders.custid AND Customer.name LIKE '박지성';

--(5) 박지성이 구매한 도서의 출판사 수
	SELECT COUNT(DISTINCT publisher) 
	FROM Customer, Orders, Book 
	WHERE Customer.custid=Orders.custid AND Orders.bookid=Book.bookid AND Customer.name LIKE '박지성';

--(6) 박지성이 구매한 도서의 이름, 가격, 정가와 판매가격의 차이
	SELECT bookname, price, price-saleprice 
	FROM Customer, Orders, Book 
	WHERE Customer.custid=Orders.custid AND Orders.bookid=Book.bookid
         	AND Customer.name LIKE '박지성';

--(7) 박지성이 구매하지 않은 도서의 이름
	SELECT bookname FROM Book b1
	WHERE NOT EXISTS 
	    (SELECT bookname FROM Customer, Orders
	     WHERE Customer.custid=Orders.custid AND Orders.bookid=b1.bookid
	              AND Customer.name LIKE '박지성');
                
                
                
--(1) 마당서점 도서의 총 개수
	SELECT count(*) FROM Book;

--(2) 마당서점에 도서를 출고하는 출판사의 총 개수
	SELECT COUNT(Distinct publisher)
	FROM Book;

--(3) 모든 고객의 이름, 주소
	SELECT name, address
	FROM Customer;

--(4) 2014년 7월 4일~7월 7일 사이에 주문받은 도서의 주문번호
	SELECT *
	FROM Orders
	WHERE orderdate BETWEEN '20140704' AND '20140707';

--(5) 2014년 7월 4일~7월 7일 사이에 주문받은 도서를 제외한 도서의 주문번호

	SELECT *
	FROM Orders
	WHERE orderdate NOT BETWEEN '20140704' AND '20140707';

--(6) 성이 ‘김’ 씨인 고객의 이름과 주소
	SELECT name, address
	FROM Customer
	WHERE name LIKE '김%';

--(7) 성이 ‘김’ 씨이고 이름이 ‘아’로 끝나는 고객의 이름과 주소
	SELECT name, address
	FROM Customer
	WHERE name LIKE '김%아';

--(8) 주문하지 않은 고객의 이름(부속질의 사용)
	SELECT name FROM Customer
	WHERE name NOT IN 
		(SELECT name
		FROM Orders, Customer
		WHERE Orders.custid=Customer.custid);

--(9) 주문 금액의 총액과 주문의 평균 금액
	SELECT SUM(saleprice), AVG(saleprice)
	FROM Orders;

--(10) 고객의 이름과 고객별 구매액
	SELECT name, SUM(saleprice)
	FROM  Orders, Customer
	WHERE Orders.custid=Customer.custid
	GROUP BY name;

--(11) 고객의 이름과 고객이 구매한 도서 목록
	SELECT name, bookname
	FROM Book, Orders, Customer
	WHERE Book.bookid=Orders.bookid 
	        AND Orders.custid=Customer.custid;

--(12) 도서의 가격(Book 테이블)과 판매가격(Orders 테이블)의 차이가 가장 많은 주문
	SELECT *
	FROM Book, Orders
	WHERE Book.bookid=Orders.bookid
	      AND price-saleprice=
		(SELECT MAX(price-saleprice) 
		 FROM Book, Orders
	         WHERE Book.bookid=Orders.bookid);

--(13) 도서의 판매액 평균보다 자신의 구매액 평균이 더 높은 고객의 이름
	SELECT name, AVG(saleprice) 
	FROM Customer, Orders
	WHERE Customer.custid=Orders.custid
	GROUP BY name 
	HAVING AVG(saleprice) > 
	          (SELECT AVG(saleprice) FROM Orders); 















