-- queries 1

select * from keeps_track_of;
select * from student;
select * from validation;
select * from staff;
select * from authentication_system;
select *from member;
select * from faculty;
select * from book_copies;
select * from book_catalogue;
select * from report;
select * from quota
select * from book_issue;


SELECT bc.accession_no 
FROM book_copies bc 
JOIN book_catalogue bk ON bk.ISBN_NO = bc.ISBN_NO 
WHERE bk.title = 'DBMS for beginners';



SELECT bi.*, m.* 
FROM book_issue bi 
JOIN member m ON bi.member_no = m.member_no;

SELECT * FROM student 
WHERE roll_no IN (SELECT roll_no FROM member WHERE roll_no IS NOT NULL);
-- List all students who are also members:


SELECT * FROM faculty 
WHERE id IN (SELECT id FROM member WHERE id IS NOT NULL);
-- List all faculty who are also members:


-- List all staff who are also members:
SELECT * FROM staff WHERE id IN (SELECT id FROM keeps_track_of);


-- Retrieve all the books issued by a specific member along with their due dates:
SELECT bc.title, bc.publisher, bi.doi, r.due_date
FROM book_issue bi
JOIN book_copies bcp ON bi.accession_no = bcp.accession_no
JOIN book_catalogue bc ON bcp.ISBN_NO = bc.ISBN_NO
JOIN report r ON bi.member_no = r.member_no
WHERE bi.member_no = 'MN1';

-- List all members along with their names and the titles of the books they have issued:
SELECT m.member_no, m.member_type, m.member_class, IFNULL(s.student_fname, f.faculty_fname) AS member_fname,
       IFNULL(s.student_lname, f.faculty_lname) AS member_lname, bc.title
FROM member m
LEFT JOIN student s ON m.roll_no = s.roll_no
LEFT JOIN faculty f ON m.id = f.id
LEFT JOIN book_issue bi ON m.member_no = bi.member_no
LEFT JOIN book_copies bcp ON bi.accession_no = bcp.accession_no
LEFT JOIN book_catalogue bc ON bcp.ISBN_NO = bc.ISBN_NO;


-- Find the number of books issued by each member:
SELECT m.member_no, m.member_type, m.member_class, 
COUNT(bi.accession_no) AS num_books_issued
FROM member m
LEFT JOIN book_issue bi ON m.member_no = bi.member_no
GROUP BY m.member_no, m.member_type, m.member_class;



-- List all staff members who have issued books, along with the titles of the books issued:
SELECT st.staff_fname, st.staff_lname, bc.title
FROM staff st
JOIN keeps_track_of kto ON st.id = kto.id
JOIN member m ON kto.member_no = m.member_no
JOIN book_issue bi ON m.member_no = bi.member_no
JOIN book_copies bcp ON bi.accession_no = bcp.accession_no
JOIN book_catalogue bc ON bcp.ISBN_NO = bc.ISBN_NO;



