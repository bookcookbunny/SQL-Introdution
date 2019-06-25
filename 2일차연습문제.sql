select * from tabs;

--�����Լ� : SUM, AVG,MIN,MAX,COUNT 

select * from orders;


select sum(SALEPRICE) �Ѹ��� from orders;

--�迬�� ���� �ֹ��� ������ �� �Ǹž�

select * from tabs;

select * from customer;
select * from orders;

select * from book;


select * from orders where custid=2;


select sum(saleprice) as �迬�Ƹ��� from orders where custid=2;


select sum(saleprice) ����, avg(saleprice)���, min(saleprice)�ּҰ�,max(saleprice) �ִ밪
from orders;


select count(*) from orders;



--������ �ֹ��� ������ �� ������ �� �Ǹž��� ���Ͻÿ�...

--group by�� �׷�ȭ�� �� �����Լ� ���

select custid, count(*), sum(saleprice)
from orders
group by custid;

--������ 8,000�� �̻��� ������ ������ ���� ���Ͽ� ���� �ֹ� ������ �� ������ ���Ͻÿ�. ��, �� �� �̻� ������ ���� ���Ѵ�.

select custid, count(*)
from ORDERS
where saleprice>=8000
group by custid
having count(*)>=2;


--(1) ������ȣ�� 1�� ������ �̸�
SELECT bookname FROM Book WHERE bookid=1;

--(2) ������ 20,000�� �̻��� ������ �̸�
	SELECT bookname FROM Book WHERE price >= 20000;

select * from CUSTOMER;
select * from Orders;


--(3) �������� �� ���ž�
	SELECT SUM(saleprice) 
	FROM Customer, Orders 
	WHERE Customer.custid=Orders.custid AND Customer.name LIKE '������';

--(4) �������� ������ ������ ��
	SELECT COUNT(*) FROM Customer, Orders 
	WHERE Customer.custid=Orders.custid AND Customer.name LIKE '������';

--(5) �������� ������ ������ ���ǻ� ��
	SELECT COUNT(DISTINCT publisher) 
	FROM Customer, Orders, Book 
	WHERE Customer.custid=Orders.custid AND Orders.bookid=Book.bookid AND Customer.name LIKE '������';

--(6) �������� ������ ������ �̸�, ����, ������ �ǸŰ����� ����
	SELECT bookname, price, price-saleprice 
	FROM Customer, Orders, Book 
	WHERE Customer.custid=Orders.custid AND Orders.bookid=Book.bookid
         	AND Customer.name LIKE '������';

--(7) �������� �������� ���� ������ �̸�
	SELECT bookname FROM Book b1
	WHERE NOT EXISTS 
	    (SELECT bookname FROM Customer, Orders
	     WHERE Customer.custid=Orders.custid AND Orders.bookid=b1.bookid
	              AND Customer.name LIKE '������');
                
                
                
--(1) ���缭�� ������ �� ����
	SELECT count(*) FROM Book;

--(2) ���缭���� ������ ����ϴ� ���ǻ��� �� ����
	SELECT COUNT(Distinct publisher)
	FROM Book;

--(3) ��� ���� �̸�, �ּ�
	SELECT name, address
	FROM Customer;

--(4) 2014�� 7�� 4��~7�� 7�� ���̿� �ֹ����� ������ �ֹ���ȣ
	SELECT *
	FROM Orders
	WHERE orderdate BETWEEN '20140704' AND '20140707';

--(5) 2014�� 7�� 4��~7�� 7�� ���̿� �ֹ����� ������ ������ ������ �ֹ���ȣ

	SELECT *
	FROM Orders
	WHERE orderdate NOT BETWEEN '20140704' AND '20140707';

--(6) ���� ���衯 ���� ���� �̸��� �ּ�
	SELECT name, address
	FROM Customer
	WHERE name LIKE '��%';

--(7) ���� ���衯 ���̰� �̸��� ���ơ��� ������ ���� �̸��� �ּ�
	SELECT name, address
	FROM Customer
	WHERE name LIKE '��%��';

--(8) �ֹ����� ���� ���� �̸�(�μ����� ���)
	SELECT name FROM Customer
	WHERE name NOT IN 
		(SELECT name
		FROM Orders, Customer
		WHERE Orders.custid=Customer.custid);

--(9) �ֹ� �ݾ��� �Ѿװ� �ֹ��� ��� �ݾ�
	SELECT SUM(saleprice), AVG(saleprice)
	FROM Orders;

--(10) ���� �̸��� ���� ���ž�
	SELECT name, SUM(saleprice)
	FROM  Orders, Customer
	WHERE Orders.custid=Customer.custid
	GROUP BY name;

--(11) ���� �̸��� ���� ������ ���� ���
	SELECT name, bookname
	FROM Book, Orders, Customer
	WHERE Book.bookid=Orders.bookid 
	        AND Orders.custid=Customer.custid;

--(12) ������ ����(Book ���̺�)�� �ǸŰ���(Orders ���̺�)�� ���̰� ���� ���� �ֹ�
	SELECT *
	FROM Book, Orders
	WHERE Book.bookid=Orders.bookid
	      AND price-saleprice=
		(SELECT MAX(price-saleprice) 
		 FROM Book, Orders
	         WHERE Book.bookid=Orders.bookid);

--(13) ������ �Ǹž� ��պ��� �ڽ��� ���ž� ����� �� ���� ���� �̸�
	SELECT name, AVG(saleprice) 
	FROM Customer, Orders
	WHERE Customer.custid=Orders.custid
	GROUP BY name 
	HAVING AVG(saleprice) > 
	          (SELECT AVG(saleprice) FROM Orders); 















