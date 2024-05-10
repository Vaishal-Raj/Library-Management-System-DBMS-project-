1. Import the project as zip file using netbeans 8.2
2. Before executing the project file, run the creation.sql, insert.sql and triggers_lib.sql in sqlplus
3. Check your system's port number, SQL service (XE or ORCL) and Oracle username and password and change these accordingly in the initDatabase() function which is used for connection with oracle in each Jframe
4. Execute the Library_Management.java file
5. The home page requests the type of login, admin, or user by clicking the appropriate buttons present. The admin is the person managing the library system having permission to add books, check the book list, reservation list, borrowed book details, and the due list. Admin can also keep track of the users, the number of borrowings, and reservations made by each user.
6. The book list displays the BookID followed by the library, ISBN the ID provided to the book on the international forum, and the number of copies available in the library which could be borrowed.
7. The borrow details consist of the BookID borrowed, the UserID of the person who borrowed, and the borrow date and the due date with the computation of a fine on the basis of Rs.25 for each day in case of failing to return on or before its due date.
8. The Reservation details consist of the UserID, Name of the book reserved, its BookID, and the date of reservation. It gets displayed on the order of the date of reservation.
9. The Due Details module allows the admin to retrieve the book borrowings which has exceeded the due date. It contains the UserID, Name, BookID, date of borrowing, the due date, the return date, and the fine which is computed based on the due date and return date.
10. The Admin has permission to add new books to the database where he/she should insert the information regarding the book.
11. The list of users displays the UserID and name of all the users present in the database with also the number of borrowings or reservations made by them.
12. The user's login page allows both the login process for already existing users and the sign-up process for new users.
13. Upon clicking the sign-up button, the required details have to be provided and the sign-up button creates an account by inserting this record into the users table.
14. When the provided login details are valid and correct, the message box will display the login successful message. When it isn't correct, it will report that the account isn't found and will ask you to use the sign-up option.
15. In case the user has forgotten his UserID, he/she can retrieve it by using the forgot userid module where the user can provide their mail id and phone number and get their respective UserID.
16. The borrow book allows the user to borrow the books which are available in the library and reserve the books in case there are no copies available in the library. The maximum number of borrowing and reservations a user can do is 3 in each case.
17. The return books module allows you to return the books which the user has borrowed.
18. The books reserved can be moved to the borrowing when the copy becomes available and the number of books borrowed is less than the maximum limit.