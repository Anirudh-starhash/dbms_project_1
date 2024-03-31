insert into book_catalogue(auth_fname,auth_lname,title,publisher,year,ISBN_NO) 
values
    ('John','Doe','DBMS for beginners','bell','1996-10-20','ISBN001'),
    ('John','Smith','Advanced DBMS','adam','1996-11-12','ISBN002'),
    ('Adma','Augustus','Modelling and optimization techniques','david','1998-10-23','ISBN003'),
    ('Cristia','Jennifer','Computer Architecture','bell','1998-12-02','ISBN004'),
    ('John','Smith','Data mining','gram','1999-04-14','ISBN005'),
    ('Maria','Smith','Linux basics','ion','1999-11-03','ISBN006'),
    ('Henry','Berkley','Programming excellence','gram','2001-05-17','ISBN007'),
    ('Denver','Daniel','OOPS in python','root','2001-10-21','ISBN008'),
    ('John','Doe','DBMS for advanced','root','2002-06-30','ISBN009'),
    ('Adma','Augustus','Machine Learning Techniques','root','2002-07-23','ISBN0010'),
    ('Aho','Ullman','Compiler Design','willey','2002-08-15','ISBN0011'),
    ('Aho','Ullman','Theory of Computation','willey','2004-02-28','ISBN0012'),
    ('Tom','Hardy','Applied physics','bell','2011-12-26','ISBN0013'),
    ('Jacob','Williams','Electrical components','azmuth','2014-08-05','ISBN0014'),
    ('Arvind','Narayan','How to become rich','ben','2017-12-31','ISBN0015'),
    ('Bala','Chand','Cloud Computing','azmuth','2009-08-07','ISBN0016'),
    ('Devnath','Singhal','English and its benefits','affleck','2008-01-11','ISBN0017'),
    ('Aditya','Kachuve','Block Chain Terminology','paul','2003-11-11','ISBN0018'),
    ('Aditi','Murthy','Web developmemt','maria','2021-09-11','ISBN0019'),
    ('Aradhya','Bisi','Statistics and probability','eva','2019-03-31','ISBN0020');

-- select * from book_catalogue;

insert into book_copies(ISBN_NO,accession_no)
VALUES
     ('ISBN001','ACC001'),
     ('ISBN002','ACC002'),
     ('ISBN003','ACC003'),
     ('ISBN004','ACC004'),
     ('ISBN005','ACC005'),
     ('ISBN001','ACC006'),
     ('ISBN002','ACC007'),
     ('ISBN001','ACC009'),
     ('ISBN003','ACC0010'),
     ('ISBN006','ACC0011'),
     ('ISBN007','ACC0012'),
     ('ISBN008','ACC0013'),
     ('ISBN009','ACC0014'),
     ('ISBN0010','ACC0015'),
     ('ISBN0011','ACC0016'),
     ('ISBN0012','ACC0017'),
     ('ISBN0013','ACC0018'),
     ('ISBN0014','ACC0019'),
     ('ISBN0015','ACC0020'),
     ('ISBN0016','ACC0021'),
     ('ISBN0017','ACC0022'),
     ('ISBN0018','ACC0023'),
     ('ISBN0019','ACC0024'),
     ('ISBN0020','ACC0025'),
     ('ISBN0014','ACC0026'),
     ('ISBN0014','ACC0027'),
     ('ISBN0017','ACC0028'),
     ('ISBN0017','ACC0029'),
     ('ISBN0016','ACC0030'),
     ('ISBN0015','ACC0031'),
     ('ISBN0015','ACC0032'),
     ('ISBN0012','ACC0033'),
     ('ISBN0012','ACC0034'),
     ('ISBN008','ACC0035'),
     ('ISBN007','ACC0036'),
     ('ISBN006','ACC0037'),
     ('ISBN004','ACC0038'),
     ('ISBN005','ACC0039'),
     ('ISBN003','ACC0040'),
     ('ISBN001','ACC0041'),
     ('ISBN002','ACC0042'),
     ('ISBN0020','ACC0043'),
     ('ISBN0019','ACC0044'),
     ('ISBN0018','ACC0045'),
     ('ISBN0011','ACC0046'),
     ('ISBN007','ACC0047'),
     ('ISBN006','ACC0048'),
     ('ISBN005','ACC0049'),
     ('ISBN0010','ACC0050');

insert into book_copies values('ISBN002','ACC008');

-- select * from book_copies;


-- select bc.accession_no from
-- book_copies bc join book_catalogue bk
-- on bk.ISBN_NO=bc.ISBN_NO
-- where bc.ISBN_NO='ISBN001';

insert into quota (member_type,max_books,max_duration)
values
   ('ug',6,30),
   ('pg',8,45),
   ('phd',8,50),
   ('fac',7,45);

insert into student (student_fname,student_lname,gender,dob,department,mobile_no,roll_no,degree)
VALUES
    ('Anirudh','Pabbaraju','M','2004-11-03','CSE','7981192166','22CSEUA10','ug'),
    ('Goutham','Srivastav','M','2003-12-13','ECE','7981192167','21ECEUA14','ug'),
    ('Shilpa','Saxema','F','2004-10-23','CSE','7981192168','22CSEPA15','pg'),
    ('Anil','Gupta','M','2003-09-30','MECH','7981192169','21PDC15','phd'),
    ('Aditi','Pittala','F','2005-11-30','MECH','7981192156','23MECHUA21','ug'),
    ('Abhishek','Nayar','M','2004-08-27','BIOTECH','7981192146','22BIOUA18','ug'),
    ('Teja','Sharma','M','2003-09-26','CIVIL','7981192136','21CIVPA13','pg'),
    ('Ambika','Khatri','F','2004-01-24','CSE','7981192126','22PDC10','phd'),
    ('Rahul','Mahadev','M','2004-03-22','EEE','7981192116','22EEEUB02','ug'),
    ('Nikesh','Tadela','M','2002-04-13','CSE','7981192106','20CSEUA56','ug'),
    ('Sai','Charan','M','2002-05-17','MNC','7981192266','20MNCPA23','pg'),
    ('Anunita','Bindal','F','2002-06-16','VLSI','7981192366','20PDD15','phd'),
    ('Akanksha','Raj','F','2004-07-15','CSE','7981192466','22CSEUA45','ug'),
    ('Alekhya','Boju','F','2004-12-18','VLSI','7981192566','22VLSIUA08','ug'),
    ('Amir','Hamza','M','2004-01-19','CSE','7981192666','22CSEPA17','pg'),
    ('Viraj','Perugu','M','2003-10-22','MECH','7981192766','21PDC34','phd'),
    ('Akshara','Hassan','F','2003-05-05','CSE','7981192866','21CSEUA15','ug'),
    ('Bhim','Gurjar','M','2003-06-06','ECE','7981192966','21ECEUB12','ug'),
    ('Vayu','Ragavan','M','2003-05-07','MNC','7981191166','21MNCPB34','pg'),
    ('Maya','Banerjee','F','2004-07-04','EEE','7981193166','22PDA17','phd');

-- select *from student;

insert into faculty (faculty_fname,faculty_lname,gender,doj,department,mobile_no,id)
VALUES
    ('Arnav','Pandit','M','2004-11-03','CSE','7981192166','CSE10'),
    ('Sohel','Riyaz','M','2003-12-13','ECE','7981192167','ECE14'),
    ('Meera','Kant','F','2004-10-23','CSE','7981192168','CSE15'),
    ('Arjun','Sarja','M','2003-09-30','MECH','7981192169','PD15'),
    ('Amulya','Valli','F','2005-11-30','MECH','7981192156','MECH21'),
    ('Abhiram','Dagar','M','2004-08-27','BIOTECH','7981192146','BIO18'),
    ('Tejas','Joshi','M','2003-09-26','CIVIL','7981192136','CIV13'),
    ('Ambalika','Gupta','F','2004-01-24','CSE','7981192126','PD10'),
    ('Raju','Gopinath','M','2004-03-22','EEE','7981192116','EEE02'),
    ('Vinay','Singh','M','2002-04-13','CSE','7981192106','CSE56'),
    ('Sai','Karthik','M','2002-05-17','MNC','7981192266','MNC23'),
    ('Akshaya','Gomati','F','2002-06-16','VLSI','7981192366','PD16'),
    ('Avipsa','Sehgal','F','2004-07-15','CSE','7981192466','CSE45'),
    ('Aravi','Bisi','F','2004-12-18','VLSI','7981192566','VLSI08'),
    ('Mohd','Shami','M','2004-01-19','CSE','7981192666','CSE17'),
    ('Daniel','Ferguson','M','2003-10-22','MECH','7981192766','PD34'),
    ('Shruti','Hassan','F','2003-05-05','CSE','7981192866','CSE20'),
    ('Nakul','Singhania','M','2003-06-06','ECE','7981192966','ECE12'),
    ('Abdul','Sheik','M','2003-05-07','MNC','7981191166','MNC34'),
    ('Priya','Chaterjee','F','2004-07-04','EEE','7981193166','PD17');

-- select * from faculty;


insert into Authentication_system (login_id,password)
values
('priya','priya@v123'),
('Vyastyagi','tyagi@23'),
('priyanka','kavati@45'),
('PremaRani','rani@$23'),
('Sandhya','rani$#21'),
('Kishore','tiru@123'),
('Tenzing','fitoor@76'),
('Aayush','singh@345'),
('Karthikeya','karthik@67'),
('Anirudh','ilraju@12'),
('Tushar','kumar@987'),
('Pooja','sharma@45'),
('Shika','pandey@67'),
('Tanmay','chauhan@11'),
('Chauhan','manish@123'),
('Sreenidhi','sahay@se'),
('Gaikwad','gaik@raju'),
('Reddy','reddy@tan'),
('Anand','anand@giri'),
('Pathak','pathak@sh');

-- select * from authentication_system;

insert into student (student_fname,student_lname,gender,dob,department,mobile_no,roll_no,degree)
values 
      ('Teja','Karthikeya','M','2004-07-26','CSE','9356478391','22CSEUB03','ug'),
('Anirudh','Pabbaraju','M','2004-05-24','CSE','9564783920','22CSEUA11','ug'),
('Tushar','Kumar','M','2004-08-26','ECE','9098765678','22ECEUB01','ug'),
('Pooja','Sharma','F','2004-09-18','ECE','9234567891','22ECEUB10','ug'),
('Deepti','','F','2004-10-17','BIOTECH','9567890093','22BIOUB15','ug'),
('Nikesh','Tadela','M','2004-09-25','BIOTECH','9465445679','22BIOUB21','ug'),
('Sathvika','Anagha','F','2003-08-22','MME','9657849234','22MMEUB29','ug'),
('Sathvik','Shetty','M','2004-09-12','MME','8456748321','22MMEUB28','ug'),
('Shriya','Saxena','F','2004-06-05','MECH','8675340986','22MECHUB29','ug'),
('Shika','Pandey','F','2004-08-21','MECH','7654567890','22MECHUB10','ug'),
('Tanmay','Chauhan','M','2004-02-22','CSE','8789098762','21CSEPB12','pg'),
('Manish','Chauhan','M','2004-05-21','CSE','8098765450','21CSEPA12','pg'),
('Sreenidhi','Sahay','F','2004-03-02','CSE','9876567890','20CSEPB18','pg'),
('Sanjay','Sahoo','M','2004-04-12','ECE','8123456549','21ECEPB10','pg'),
('Rajeswari','Gaikwad','F','2004-07-22','ECE','7890123455','21ECEPA02','pg'),
('Tanmay','Rao','M','2004-12-22','CSE','9856789971','21PHA12','phd'),
('Tanay','Reddy','M','2004-11-21','CIVIL','9996789545','21PDA22','phd'),
('Girija','Anand','F','2004-02-22','EEE','8874567894','21PDB32','phd'),
('Devi','Nayak','F','2004-12-11','MNC','7567890123','21PDB42','phd'),
('Shiva','Pathak','M','2004-03-12','VLSI','9087654321','21PDB12','phd');




insert into faculty (faculty_fname,faculty_lname,gender,doj,department,mobile_no,id)
values 
    ('Ilaiah','Kavati','M','2007-11-27','CSE','9248291567','CSE22'),
('Sujit','Das','M','2005-06-22','CSE','9546738920','CSE12'),
('Prerna','Chopra','F','2006-10-28','BIOTECH','9234567894','BIO05'),
('Prem','Kumar','M','2007-11-27','MME','9456547890','MME23'),
('Prateek','Kumar','M','2010-03-25','CSE','7876545678','CSE25'),
('Meena','Kumari','F','2004-07-31','CSE','8345678967','CSE21'),
('Sameer','Sheik','M','2006-10-21','MNC','8123009876','MNC22'),
('Sanjay','Panda','M','2008-09-17','EEE','9765434560','EEE32'),
('Manish','Kavati','M','2009-11-27','ECE','8087654126','ECE30'),
('Vijay','Naidu','M','2004-01-08','CIVIL','9248291567','CIV12'),
('Prabhas','Raj','M','2007-11-27','CSE','9248291567','CSE31'),
('Varuni','priya','F','2007-11-27','VLSI','9248291567','VLSI22'),
('Vyas','Tyagi','M','2007-11-27','BIOTECH','9248291567','BIO09'),
('priyanka','Kavati','F','2007-11-27','CSE','9248291567','CSE65'),
('Prema','Rani','F','2007-11-27','VLSI','9248291567','VLSI01'),
('Sandhya','Rani','F','2007-11-27','ECE','9248291567','ECE05'),
('Kishore','Tirumala','M','2007-11-27','MECH','9248291567','MECH06'),
('Tenzing','Fitoor','M','2007-11-27','CSE','9248291567','CSE19'),
('Aayush','Singh','M','2007-11-27','MME','9248291567','MME17'),
('Mithali','Sherawat','F','2007-11-27','BIOTECH','9248291567','BIO11');


insert into member values ('MN1','ug','stud','22CSEUA10',NULL);
insert into member values ('MN2','ug','stud','21ECEUA14',NULL);
insert into member values ('MN3','ug','stud','22CSEUA10',NULL);
insert into member values ('MN4','ug','stud','23MECHUA21',NULL);
insert into member values ('MN5','ug','stud','22BIOUA18',NULL);
insert into member values ('MN6','pg','stud','21CIVPA13',NULL);
insert into member values ('MN7','pg','stud','22CSEPA15',NULL);
insert into member values ('MN8','pg','stud','20MNCPA23',NULL);
insert into member values ('MN9','pg','stud','21MNCPB34',NULL);
insert into member values ('MN10','phd','stud','22PDA17',NULL);
insert into member values ('MN11','phd','stud','21PDB32',NULL);
insert into member values('MN12','phd','stud','21PDB12',NULL);
insert into member values ('MN13','fac','fac',NULL,'VLSI22');
insert into member values('MN14','fac','fac',NULL,'BIO09');
insert into member values('MN15','fac','fac',NULL,'CSE15');
insert into member values('MN16','fac','fac',NULL,'VLSI01');
insert into member values('MN17','fac','fac',NULL,'ECE05');
insert into member values('MN18','fac','fac',NULL,'MECH06');
insert into member values('MN19','fac','fac',NULL,'CSE19');
insert into member values('MN20','fac','fac',NULL,'MME17');
insert into member values('MN21','ug','stud','22CSEUA11',NULL);
insert into member values('MN22','pg','stud','21CSEPA12',NULL);
insert into member values('MN23','fac','fac',NULL,'PD15');
insert into member values('MN24','phd','stud','22PDC10',NULL);
insert into member values('MN25','ug','stud','22ECEUB01',NULL);
-- select * from member;





insert into staff (staff_fname,staff_lname,gender,mobile_no,id,doj)
VALUES
    ('Ram','Dev','M','9704388839','STF01','2004-10-03'),
    ('Sravani','Reddy','F','9872843838','STF02','2005-12-04'),
    ('Lasya','Kumari','F','9537239271','STF03','1994-11-02'),
    ('Laxman','Sehgal','M','8926473777','STF04','1995-09-01'),
    ('Rama','Devi','F','9863673783','STF05','1996-08-21'),
    ('Shiv','Rathore','M','8986272728','STF06','1997-07-19'),
    ('Vinaya','Kaleru','F','9876543332','STF07','1998-06-18'),
    ('Vyshak','Kumar','M','7656890978','STF08','1999-05-17'),
    ('Mayanti','Langer','F','9852627272','STF09','2000-11-15'),
    ('Karn','Singh','M','8914378273','STF010','2002-01-14'),
    ('Arya','Vinod','M','9926383728','STF011','2001-02-13'),
    ('Mrinalini','Dube','F','7787978976','STF012','2003-04-27'),
    ('Aditya','Mittal','M','9876545673','STF013','2006-07-28'),
    ('Kashvi','Mittal','F','7976765787','STF014','2007-10-29'),
    ('Ramnath','Kovind','M','9876567876','STF015','1990-12-31'),
    ('Malaika','Reshmi','F','9128283737','STF016','1989-10-30'),
    ('Pritam','Garg','M','9383847383','STF017','2004-11-05'),
    ('Raju','Tadepalli','M','9348484574','STF018','2004-09-04'),
    ('Riya','Roy','F','9867687873','STF019','2003-01-23'),
    ('Henry','Allen','M','9876542223','STF020','2002-03-13');

-- select * from staff;

insert into validation (login_id,password,id)
values 
     ('priya','priya@v123','STF01'),
('Vyastyagi','tyagi@23','STF02'),
('priyanka','kavati@45','STF03'),
('PremaRani','rani@$23','STF04'),
('Sandhya','rani$#21','STF011'),
('Kishore','tiru@123','STF012'),
('Tenzing','fitoor@76','STF020'),
('Aayush','singh@345','STF017'),
('Karthikeya','karthik@67','STF015'),
('Anirudh','ilraju@12','STF013'),
('Tushar','kumar@987','STF07');

-- select * from validation;

insert into book_issue(member_no,accession_no,doi)
values 
       ('MN1','ACC001','2024-03-11'),
       ('MN11','ACC002','2024-02-11'),
       ('MN3','ACC003','2024-03-13'),
       ('MN4','ACC004','2024-03-14'),
       ('MN5','ACC005','2024-03-15'),
       ('MN6','ACC006','2024-03-16'),
       ('MN7','ACC007','2024-02-12'),
       ('MN8','ACC008','2024-02-13'),
       ('MN9','ACC009','2024-02-13'),
       ('MN10','ACC0010','2024-02-21');

insert into report(due_date,return_date,due_amount,member_no,member_type)
VALUES
      ('2024-04-11',NULL,0,'MN1','ug'),
      ('2024-03-26','2024-03-27',1,'MN11','phd'),
      ('2024-04-13',NULL,0,'MN3','ug'),
      ('2024-04-14',NULL,0,'MN4','ug'),
      ('2024-04-15',NULL,0,'MN5','ug'),
      ('2024-05-01',NULL,0,'MN6','pg'),
      ('2024-03-27',NULL,4,'MN7','pg'),
      ('2024-03-28','2024-03-29',1,'MN8','pg'),
      ('2024-03-28','2024-03-31',3,'MN9','pg'),
      ('2024-04-06',NULL,0,'MN10','phd');

insert into keeps_track_of(id,member_no)
VALUES 
     ('STF01','MN1'),
     ('STF011','MN11'),
     ('STF02','MN3'),
     ('STF03','MN4'),
     ('STF06','MN5'),
     ('STF07','MN6'),
     ('STF09','MN7'),
     ('STF015','MN8'),
     ('STF012','MN9'),
     ('STF013','MN10');
