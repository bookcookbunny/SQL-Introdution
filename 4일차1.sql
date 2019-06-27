--CREATE TABLE NewBook (
--
--  
--  bookname VARCHAR2(20) NOT NULL, NULL값을 허용하지 않는 제약
--  bookname VARCHAR2(20) UNIQUE, 유일한 값에 대한 제약(같은 값이 있으면 안된다.)
--  publisher VARCHAR2(20),
--  price NUMBER DEFAULT 10000   price에 값이 입력되지 않으면 기본값 10000을 저장한다.
--  price NUMBER DEFAULT 10000  CHECK(price>1000)  가격은 최소 1000원 이상으로 한다.
--  PRIMARY KEY (bookname, publisher) 만약 bookid 속성이 없어서 두 개의 속성이 기본키가 된다면 괄호를 사용하여 복합키를 지정

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
--FOREIGN KEY (custid) REFERENCES NewCustomer(custid) ON DELETE CASCADE  ON DELETE는 투플의 삭제시 외래키 속성에 대한 동작을 나타낸다.
--FOREIGN KEY (custid) REFERENCES NewCustomer(custid) ON DELETE SET NULL  옵션으로는 CASCADE, SET NULL
--                                                                       1) CASCADE 참조되는 투플이 삭제되면 참조하는 NewOrders 테이블의 
--                                                                          해당 투플이 연쇄 삭제(CASCADE)된다.  
--);                                                                      2)SET NULL 옵션은 NULL값으로 바꾼다.

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
--insert into BOOK(BOOKID,BOOKNAME,publisher,price) values(11,'스포츠의학','한솔의학서적',90000);
--
--desc BOOK;
--select * from BOOK order by bookid;
--
--insert into book(bookid, bookname, publisher) values(14, '스포츠의학', '한솔의학서적');
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
set address='대한민국 부산'
where custid=5;

select * from customer;

select address from CUSTOMER where name='김연아';


update CUSTOMER
set address=(select address from CUSTOMER where name='김연아')
where name like '박세리';


select * from customer;



delete from customer where CUSTID=5;

select * from customer;

delete from CUSTOMER;





