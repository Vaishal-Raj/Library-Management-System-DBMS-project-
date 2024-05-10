REM books table
INSERT INTO Books (BookID, ISBN) VALUES ('B001', 12345);
INSERT INTO Books (BookID, ISBN) VALUES ('B002', 67890);
INSERT INTO Books (BookID, ISBN) VALUES ('B003', 24680);
INSERT INTO Books (BookID, ISBN) VALUES ('B004', 13579);
INSERT INTO Books (BookID, ISBN) VALUES ('B005', 97531);
INSERT INTO Books (BookID, ISBN) VALUES ('B006', 86420);
INSERT INTO Books (BookID, ISBN) VALUES ('B007', 56789);
INSERT INTO Books (BookID, ISBN) VALUES ('B008', 43210);
INSERT INTO Books (BookID, ISBN) VALUES ('B009', 98765);
INSERT INTO Books (BookID, ISBN) VALUES ('B010', 10203);
INSERT INTO Books (BookID, ISBN) VALUES ('B011', 45678);
INSERT INTO Books (BookID, ISBN) VALUES ('B012', 78901);
INSERT INTO Books (BookID, ISBN) VALUES ('B013', 11223);
INSERT INTO Books (BookID, ISBN) VALUES ('B014', 44556);
INSERT INTO Books (BookID, ISBN) VALUES ('B015', 77889);
INSERT INTO Books (BookID, ISBN) VALUES ('B016', 99009);
INSERT INTO Books (BookID, ISBN) VALUES ('B017', 12321);
INSERT INTO Books (BookID, ISBN) VALUES ('B018', 35464);
INSERT INTO Books (BookID, ISBN) VALUES ('B019', 68798);
INSERT INTO Books (BookID, ISBN) VALUES ('B020', 92029);

REM Authors table
INSERT INTO Authors (AuthorID, Fname, Lname, Nationality, DOB) VALUES ('A001', 'John', 'Smith', 'American', TO_DATE('10-JAN-1990', 'DD-MON-YYYY'));
INSERT INTO Authors (AuthorID, Fname, Lname, Nationality, DOB) VALUES ('A002', 'Emma', 'Johnson', 'British', TO_DATE('15-FEB-1985', 'DD-MON-YYYY'));
INSERT INTO Authors (AuthorID, Fname, Lname, Nationality, DOB) VALUES ('A003', 'Michael', 'Brown', 'Canadian', TO_DATE('20-MAR-1982', 'DD-MON-YYYY'));
INSERT INTO Authors (AuthorID, Fname, Lname, Nationality, DOB) VALUES ('A004', 'Sophia', 'Williams', 'Australian', TO_DATE('25-APR-1995', 'DD-MON-YYYY'));
INSERT INTO Authors (AuthorID, Fname, Lname, Nationality, DOB) VALUES ('A005', 'Daniel', 'Jones', 'American', TO_DATE('30-MAY-1988', 'DD-MON-YYYY'));
INSERT INTO Authors (AuthorID, Fname, Lname, Nationality, DOB) VALUES ('A006', 'Olivia', 'Davis', 'British', TO_DATE('05-JUN-1980', 'DD-MON-YYYY'));
INSERT INTO Authors (AuthorID, Fname, Lname, Nationality, DOB) VALUES ('A007', 'James', 'Wilson', 'Canadian', TO_DATE('10-JUL-1993', 'DD-MON-YYYY'));
INSERT INTO Authors (AuthorID, Fname, Lname, Nationality, DOB) VALUES ('A008', 'Emily', 'Taylor', 'Australian', TO_DATE('15-AUG-1986', 'DD-MON-YYYY'));
INSERT INTO Authors (AuthorID, Fname, Lname, Nationality, DOB) VALUES ('A009', 'Liam', 'Anderson', 'American', TO_DATE('20-SEP-1998', 'DD-MON-YYYY'));
INSERT INTO Authors (AuthorID, Fname, Lname, Nationality, DOB) VALUES ('A010', 'Ava', 'Martin', 'British', TO_DATE('25-OCT-1991', 'DD-MON-YYYY'));

REM publishers table
INSERT INTO Publishers (PublisherID, Fname, Lname, Address, PhoneNumber, Email) VALUES ('P001', 'ABC Publications', 'Ltd.', '123 Main St, New York', 1234567890, 'info@abcpubs.com');
INSERT INTO Publishers (PublisherID, Fname, Lname, Address, PhoneNumber, Email) VALUES ('P002', 'XYZ Books', 'Inc.', '456 Elm St, London', 2345678901, 'contact@xyzbooks.com');
INSERT INTO Publishers (PublisherID, Fname, Lname, Address, PhoneNumber, Email) VALUES ('P003', 'PQR Publishers', 'Co.', '789 Maple St, Toronto', 3456789012, 'info@pqrpubs.com');
INSERT INTO Publishers (PublisherID, Fname, Lname, Address, PhoneNumber, Email) VALUES ('P004', 'LMN Publications', 'Corp.', '234 Oak St, Sydney', 4567890123, 'contact@lmnpubs.com');
INSERT INTO Publishers (PublisherID, Fname, Lname, Address, PhoneNumber, Email) VALUES ('P005', 'EFG Books', 'Limited', '567 Elm St, New York', 5678901234, 'info@efgbooks.com');
INSERT INTO Publishers (PublisherID, Fname, Lname, Address, PhoneNumber, Email) VALUES ('P006', 'HIJ Publications', 'Inc.', '890 Pine St, London', 6789012345, 'contact@hijpubs.com');
INSERT INTO Publishers (PublisherID, Fname, Lname, Address, PhoneNumber, Email) VALUES ('P007', 'MNO Books', 'Co.', '123 Oak Ave, Toronto', 7890123456, 'info@mnobooks.com');
INSERT INTO Publishers (PublisherID, Fname, Lname, Address, PhoneNumber, Email) VALUES ('P008', 'QRS Publishers', 'Corp.', '456 Pine St, Sydney', 8901234567, 'contact@qrspubs.com');
INSERT INTO Publishers (PublisherID, Fname, Lname, Address, PhoneNumber, Email) VALUES ('P009', 'UVW Books', 'Ltd.', '789 Elm St, New York', 9012345678, 'info@uvwbooks.com');
INSERT INTO Publishers (PublisherID, Fname, Lname, Address, PhoneNumber, Email) VALUES ('P010', 'XYZ Publications', 'Co.', '123 Maple St, London', 1234509876, 'contact@xyzpubs.com');

REM book details

INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (12345, 'The Great Gatsby', 'A001', 2020, 'Fiction', 'P001', 20);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (67890, 'To Kill a Mockingbird', 'A002', 2018, 'Classic', 'P002', 15);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (24680, '1984', 'A003', 2019, 'Science Fiction', 'P003', 10);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (13579, 'Pride and Prejudice', 'A004', 2021, 'Romance', 'P004', 25);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (97531, 'The Catcher in the Rye', 'A005', 2017, 'Coming-of-Age', 'P005', 30);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (86420, 'The Hobbit', 'A006', 2020, 'Fantasy', 'P006', 15);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (56789, 'Harry Potter and the Sorcerer''s Stone', 'A007', 2018, 'Fantasy', 'P007', 20);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (43210, 'The Lord of the Rings', 'A006', 2019, 'Fantasy', 'P006', 10);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (98765, 'The Hunger Games', 'A008', 2021, 'Young Adult', 'P008', 25);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (10203, 'Gone Girl', 'A009', 2017, 'Mystery', 'P009', 30);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (45678, 'The Da Vinci Code', 'A010', 2020, 'Thriller', 'P010', 15);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (78901, 'The Alchemist', 'A001', 2018, 'Fantasy', 'P001', 20);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (11223, 'The Chronicles of Narnia', 'A006', 2019, 'Fantasy', 'P006', 10);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (44556, 'The Girl on the Train', 'A009', 2021, 'Mystery', 'P009', 25);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (77889, 'Brave New World', 'A003', 2017, 'Science Fiction', 'P003', 30);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (99009, 'The Fault in Our Stars', 'A008', 2020, 'Young Adult', 'P008', 15);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (12321, 'The Shining', 'A004', 2018, 'Horror', 'P004', 20);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (35464, 'The Picture of Dorian Gray', 'A010', 2019, 'Classic', 'P010', 10);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (68798, 'The Maze Runner', 'A005', 2021, 'Science Fiction', 'P005', 25);
INSERT INTO Book_Details (ISBN, Title, AuthorID, PublisherYear, Genre, PublisherID, Quantity) VALUES (92029, 'The Lovely Bones', 'A007', 2017, 'Drama', 'P007', 30);

REM users table
INSERT INTO Users (UserID, Email, PhoneNumber) VALUES ('U001', 'john.smith@example.com', 1234567890);
INSERT INTO Users (UserID, Email, PhoneNumber) VALUES ('U002', 'emma.johnson@example.com', 2345678901);
INSERT INTO Users (UserID, Email, PhoneNumber) VALUES ('U003', 'michael.brown@example.com', 3456789012);
INSERT INTO Users (UserID, Email, PhoneNumber) VALUES ('U004', 'sophia.williams@example.com', 4567890123);
INSERT INTO Users (UserID, Email, PhoneNumber) VALUES ('U005', 'daniel.jones@example.com', 5678901234);
INSERT INTO Users (UserID, Email, PhoneNumber) VALUES ('U006', 'olivia.davis@example.com', 6789012345);
INSERT INTO Users (UserID, Email, PhoneNumber) VALUES ('U007', 'james.wilson@example.com', 7890123456);
INSERT INTO Users (UserID, Email, PhoneNumber) VALUES ('U008', 'emily.taylor@example.com', 8901234567);
INSERT INTO Users (UserID, Email, PhoneNumber) VALUES ('U009', 'liam.anderson@example.com', 9012345678);
INSERT INTO Users (UserID, Email, PhoneNumber) VALUES ('U010', 'ava.martin@example.com', 1234509876);


REM user_details

INSERT INTO User_Details (Email, PhoneNumber, Name, Address, DOB) VALUES ('john.smith@example.com', 1234567890, 'John Smith', '123 Main St, New York', TO_DATE('08-MAR-1992', 'DD-MON-YYYY'));
INSERT INTO User_Details (Email, PhoneNumber, Name, Address, DOB) VALUES ('emma.johnson@example.com', 2345678901, 'Emma Johnson', '456 Elm St, London', TO_DATE('12-APR-1987', 'DD-MON-YYYY'));
INSERT INTO User_Details (Email, PhoneNumber, Name, Address, DOB) VALUES ('michael.brown@example.com', 3456789012, 'Michael Brown', '789 Maple St, Toronto', TO_DATE('16-MAY-1984', 'DD-MON-YYYY'));
INSERT INTO User_Details (Email, PhoneNumber, Name, Address, DOB) VALUES ('sophia.williams@example.com', 4567890123, 'Sophia Williams', '234 Oak St, Sydney', TO_DATE('20-JUN-1997', 'DD-MON-YYYY'));
INSERT INTO User_Details (Email, PhoneNumber, Name, Address, DOB) VALUES ('daniel.jones@example.com', 5678901234, 'Daniel Jones', '567 Elm St, New York', TO_DATE('24-JUL-1990', 'DD-MON-YYYY'));
INSERT INTO User_Details (Email, PhoneNumber, Name, Address, DOB) VALUES ('olivia.davis@example.com', 6789012345, 'Olivia Davis', '890 Pine St, London', TO_DATE('28-AUG-1993', 'DD-MON-YYYY'));
INSERT INTO User_Details (Email, PhoneNumber, Name, Address, DOB) VALUES ('james.wilson@example.com', 7890123456, 'James Wilson', '123 Oak Ave, Toronto', TO_DATE('01-SEP-1988', 'DD-MON-YYYY'));
INSERT INTO User_Details (Email, PhoneNumber, Name, Address, DOB) VALUES ('emily.taylor@example.com', 8901234567, 'Emily Taylor', '456 Pine St, Sydney', TO_DATE('05-OCT-1981', 'DD-MON-YYYY'));
INSERT INTO User_Details (Email, PhoneNumber, Name, Address, DOB) VALUES ('liam.anderson@example.com', 9012345678, 'Liam Anderson', '789 Elm St, New York', TO_DATE('09-NOV-1993', 'DD-MON-YYYY'));
INSERT INTO User_Details (Email, PhoneNumber, Name, Address, DOB) VALUES ('ava.martin@example.com', 1234509876, 'Ava Martin', '123 Maple St, London', TO_DATE('13-DEC-1986', 'DD-MON-YYYY'));

REM borrowing_details 
INSERT INTO Borrowing_Details (BookID, UserID, Borrowed_date, Due_date, Return_date, Fine) VALUES ('B001', 'U001', TO_DATE('01-JUN-2023', 'DD-MON-YYYY'), TO_DATE('08-JUN-2023', 'DD-MON-YYYY'), TO_DATE('06-JUN-2023', 'DD-MON-YYYY'), 0);
INSERT INTO Borrowing_Details (BookID, UserID, Borrowed_date, Due_date, Return_date, Fine) VALUES ('B002', 'U002', TO_DATE('02-JUN-2023', 'DD-MON-YYYY'), TO_DATE('09-JUN-2023', 'DD-MON-YYYY'), TO_DATE('07-JUN-2023', 'DD-MON-YYYY'), 0);
INSERT INTO Borrowing_Details (BookID, UserID, Borrowed_date, Due_date, Return_date, Fine) VALUES ('B003', 'U003', TO_DATE('03-JUN-2023', 'DD-MON-YYYY'), TO_DATE('10-JUN-2023', 'DD-MON-YYYY'), TO_DATE('08-JUN-2023', 'DD-MON-YYYY'), 0);
INSERT INTO Borrowing_Details (BookID, UserID, Borrowed_date, Due_date, Return_date, Fine) VALUES ('B004', 'U004', TO_DATE('04-JUN-2023', 'DD-MON-YYYY'), TO_DATE('11-JUN-2023', 'DD-MON-YYYY'), NULL, 0);
INSERT INTO Borrowing_Details (BookID, UserID, Borrowed_date, Due_date, Return_date, Fine) VALUES ('B005', 'U005', TO_DATE('05-JUN-2023', 'DD-MON-YYYY'), TO_DATE('12-JUN-2023', 'DD-MON-YYYY'), NULL, 0);

REM reservation table
INSERT INTO Reservations (BookID, UserID, Reserved_date) VALUES ('B003', 'U002', TO_DATE('02-JUN-2023', 'DD-MON-YYYY'));
INSERT INTO Reservations (BookID, UserID, Reserved_date) VALUES ('B002', 'U003', TO_DATE('03-JUN-2023', 'DD-MON-YYYY'));
INSERT INTO Reservations (BookID, UserID, Reserved_date) VALUES ('B004', 'U004', TO_DATE('04-JUN-2023', 'DD-MON-YYYY'));


commit;
