--CREATE TABLE NewBook (
--
--  
--  bookname VARCHAR2(20) NOT NULL, NULL���� ������� �ʴ� ����
--  bookname VARCHAR2(20) UNIQUE, ������ ���� ���� ����(���� ���� ������ �ȵȴ�.)
--  publisher VARCHAR2(20),
--  price NUMBER DEFAULT 10000   price�� ���� �Էµ��� ������ �⺻�� 10000�� �����Ѵ�.
--  price NUMBER DEFAULT 10000  CHECK(price>1000)  ������ �ּ� 1000�� �̻����� �Ѵ�.
--  PRIMARY KEY (bookname, publisher) ���� bookid �Ӽ��� ��� �� ���� �Ӽ��� �⺻Ű�� �ȴٸ� ��ȣ�� ����Ͽ� ����Ű�� ����

--);

--select * from NEWBOOK;
--
--DROP TABLE NEWBOOK;
--
--select * from NEWBOOK;
--
--
--
--CREATE TABLE NewBook(
--
--bookname VARCHAR2(20) NOT NULL,
--publisher VARCHAR2(20) UNIQUE,
--price NUMBER DEFAULT 10000 CHECK (price > 1000),
--PRIMARY KEY (bookname,publisher)
--
--);
--
--
--select * from NEWBOOK;
--
--
--
--select * from tabs;
--
--
--
--CREATE TABLE NewCustomer(
--
--  custid NUMBER PRIMARY KEY,
--  name VARCHAR2(40),
--  address VARCHAR2(40),
--  phone VARCHAR2(30)
--);
--
--
--select * from tabs;



--CREATE TABLE NewOrders(
--
--orderid NUMBER,
--custid NUMBER NOT NULL,
--bookid NUMBER NOT NULL,
--saleprice NUMBER,
--orderdate DATE,
--
--PRIMARY KEY(orderid),
--FOREIGN KEY (custid) REFERENCES NewCustomer(custid) ON DELETE CASCADE  ON DELETE�� ������ ������ �ܷ�Ű �Ӽ��� ���� ������ ��Ÿ����.
--FOREIGN KEY (custid) REFERENCES NewCustomer(custid) ON DELETE SET NULL  �ɼ����δ� CASCADE, SET NULL
--                                                                       1) CASCADE �����Ǵ� ������ �����Ǹ� �����ϴ� NewOrders ���̺��� 
--                                                                          �ش� ������ ���� ����(CASCADE)�ȴ�.  
--);                                                                      2)SET NULL �ɼ��� NULL������ �ٲ۴�.

--desc NEWBOOK;
--
--
--ALTER TABLE NEWBOOK ADD isbn VARCHAR2(13);
--
--desc NEWBOOK;
--
--
--ALTER TABLE NEWBOOK MODIFY isbn NUMBER;
--
--desc NEWBook;
--
--
--ALTER TABLE NewBOOK DROP COLUMN isbn;
--
--
--
--desc NEWBook;
--
--ALTER TABLE NEwbook add bookid NUMBER;
--desc NEWBook;
--ALTER TABLE NEwbook MODIFY bookid NUMBER NOT NULL;
--
--desc NEWBook;
--
--ALTER TABLE NewBook drop PRIMARY KEY;
--ALTER TABLE NewBook add PRIMARY KEY(bookid);
--
--desc NEWBook;
--
--drop table newbook;
--
--drop table neworders;
--
--drop table newcustomer;
--
--select * from tabs;

--select * from BOOK;
--desc BOOK;
--
--insert into BOOK(BOOKID,BOOKNAME,publisher,price) values(11,'����������','�Ѽ����м���',90000);
--
--desc BOOK;
--select * from BOOK order by bookid;
--
--insert into book(bookid, bookname, publisher) values(14, '����������', '�Ѽ����м���');
--
--select * from BOOK order by bookid;
--
--
--insert into book(bookid,BOOKNAME,publisher,price)
--select BOOKID,BOOKNAME,publisher,price from IMPORTED_BOOK;
--
--select * from BOOK order by bookid;

select * from customer;

update customer 
set address='���ѹα� �λ�'
where custid=5;

select * from customer;

select address from CUSTOMER where name='�迬��';


update CUSTOMER
set address=(select address from CUSTOMER where name='�迬��')
where name like '�ڼ���';


select * from customer;



delete from customer where CUSTID=5;

select * from customer;

delete from CUSTOMER;





