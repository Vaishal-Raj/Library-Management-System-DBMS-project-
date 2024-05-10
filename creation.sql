set linesize 200;
set echo on;
drop table reservations;
drop table Borrowing_Details;
drop table User_Details;
drop table Users;
drop table Book_Details;
drop table Publishers;
drop table Authors;
drop table Books;

create table Books(
	BookID varchar(5) CONSTRAINT bid_pk PRIMARY KEY,
	ISBN NUMBER(5) CONSTRAINT isbn_uk Unique
);

create table Authors(
	AuthorID varchar(5) CONSTRAINT aid_pk PRIMARY KEY,
	Fname varchar(20),
	Lname varchar(20),
	Nationality varchar(20),
	DOB DATE
);

create table Publishers(
	PublisherID varchar(5) CONSTRAINT pid_pk PRIMARY KEY,
	Fname varchar(50),
	Lname varchar(50),
	Address varchar(30),
	PhoneNumber NUMBER(10),
	Email varchar(40)
);

create table Book_Details(
	ISBN NUMBER(5) CONSTRAINT isbn_pk PRIMARY KEY,
	Title varchar(40),
	AuthorID varchar(5) CONSTRAINT author_fk REFERENCES Authors(AuthorID),
	PublisherYear NUMBER(4),
	Genre varchar(50),
	PublisherID varchar(5) CONSTRAINT pub_fk REFERENCES Publishers(PublisherID),
	Quantity INT,
	CONSTRAINT Book_det_fk Foreign Key(ISBN) REFERENCES Books(ISBN)
);

create table Users(
	UserID varchar(5) CONSTRAINT user_pk PRIMARY KEY,
	Email varchar(40) CONSTRAINT email_uk Unique,
	PhoneNumber NUMBER(10) CONSTRAINT pno_uk Unique
);

create table User_Details(
	Email varchar(50) CONSTRAINT email_fk REFERENCES Users(Email),
	PhoneNumber NUMBER(10) CONSTRAINT pno_fk REFERENCES Users(PhoneNumber),
	Name varchar(60),
	Address varchar(80),
	DOB DATE,
	CONSTRAINT user_ck PRIMARY KEY(Email,PhoneNumber)  
);

create table Borrowing_Details(
	BookID varchar(5) CONSTRAINT bid_fk REFERENCES Books(BookID),
	UserID varchar(5) CONSTRAINT uid_fk REFERENCES Users(UserID),
	Borrowed_date DATE,
	Due_date DATE,
	Return_date DATE DEFAULT NULL,
	Fine decimal(5,2) DEFAULT NULL,
	CONSTRAINT borrow_ck PRIMARY KEY(BookID,UserID)
);

Create table Reservations(
	BookID varchar(5) CONSTRAINT res_bid_fk REFERENCES Books(BookID),
	UserID varchar(5) CONSTRAINT res_uid_fk REFERENCES Users(UserID),
	Reserved_date DATE,
	CONSTRAINT reserve_ck PRIMARY KEY(BookID,UserID)
);
