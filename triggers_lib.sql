create or replace trigger update_quantity
after insert on Borrowing_Details
for each row
begin
  update Book_Details
  set Quantity = Quantity - 1
  where ISBN = (select b.ISBN from books b, book_details bd where b.isbn = bd.isbn and b.BookID = :new.BookID);
end;
/

-- insert into Borrowing_Details values('B012','U001','12-may-2023','15-may-2023',NULL,NULL);


create or replace function eff_quantity (bid Books.BookID%type) return INT
is
    reservation_count number;
    bd_count Number;
    actual_quantity number;
begin
    select count(bookid) into reservation_count from reservations where bookid = bid;
    select bd.Quantity into bd_count from book_details bd Join Books b 
    On bd.ISBN=b.ISBN 
    where b.bookid=bid;
    actual_quantity:=bd_count-reservation_count;
    return actual_quantity;
end;
/

--select b.bookid,bd.title,bd.PublisherID,bd.authorid,eff_quantity(bookid) as Available_Qua from books b Join Book_details bd
--On b.isbn=bd.isbn
--where eff_quantity(bookid)>0;

md
-- -- checking above func
-- set serveroutput on;
-- declare
--     flag number;
-- begin
--     flag:=check_borrowings('U001');
--     dbms_output.put_line(flag);
-- end;
-- /

-- set serveroutput on;
-- declare
--     flag number;
-- begin
--     flag:=check_borrowings('U002');
--     dbms_output.put_line(flag);
-- end;
-- /

-- set serveroutput on;
-- declare
--     flag number;
-- begin
--     flag:=check_borrowings('U010');
--     dbms_output.put_line(flag);
-- end;
-- /

-- set serveroutput on;
-- declare
--     flag number;
-- begin
--     flag:=check_borrowings('U004');
--     dbms_output.put_line(flag);
-- end;
-- /
-- ^^^^^^^^^^^^^^^^^^^^

create or replace function check_reservations(uid Users.UserID%type) return number
is
    c number;
begin
    select count(UserID) into c from reservations where(UserID = uid);
    return c;
end;
/

-- declare
--     cnt number;
-- begin
--     cnt := check_reservations('U002');
--     dbms_output.put_line(cnt);
-- end;
-- /

-- insert into reservations values('B004','U002','03-may-2023');


create or replace trigger returning_book
after update on Borrowing_Details
for each row
begin
  update Book_Details
  set Quantity = Quantity + 1
  where ISBN = (select b.ISBN from books b, book_details bd where b.isbn = bd.isbn and b.BookID = :new.BookID);
end;
/

--select b.bookid,bd.title from books b Join book_details bd On b.ISBN=bd.ISBN;




-- select * from Borrowing_Details;

--update Borrowing_Details
--set Return_date = '18-may-2023'
--where UserID = 'U001' and BookID = 'B012';

-- select * from book_details;

CREATE OR REPLACE TRIGGER update_fine
BEFORE UPDATE ON Borrowing_Details
FOR EACH ROW
BEGIN
  IF :new.Return_date > :new.due_date THEN
    :new.fine := ROUND(25 * (:new.Return_date - :new.due_date),2);
  ELSE 
     :new.fine :=0;
  END IF;
END;
/


--update book_details
--set quantity = 20
--where isbn = 78901;

create or replace function check_borrowings(uid Users.UserID%type) return number
is
c number:=0;
begin
	select count(UserID) into c from Borrowing_Details where (Return_date is NULL) and (UserID = uid);
              return c;
end;
/