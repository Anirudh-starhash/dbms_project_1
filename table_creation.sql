create table book_catalogue(
    auth_fname varchar(10) NOT NULL,
    auth_lname varchar(10),
    title varchar(10) NOT NULL,
    publisher varchar(10) NOT NULL,
    year date,
    ISBN_NO varchar(10) NOT NULL,
    Primary key (ISBN_NO)
);


create  table book_copies(
    ISBN_NO varchar(10) NOT NULL,
    accession_no VARCHAR(10),
    primary key (accession_no),
    FOREIGN key (ISBN_NO) REFERENCES book_catalogue(ISBN_NO)
);



create table student(
    student_fname varchar(10) NOT NULL,
    student_lname varchar(10),
    gender varchar(1) NOT NULL,
    dob DATE,
    department varchar(10) NOT NULL,
    mobile_no varchar(10),
    roll_no varchar(10),
    degree varchar(10),
    check (length(mobile_no)=10),
    check (department in ('CSE','ECE','EEE','BIOTECH','MME','CIVIL','MECH','INTMSC','MNC','VLSI')),
    check (gender in ('M','F','O')),
    primary key (roll_no)
);
create table faculty (
    faculty_fname varchar(10) NOT NULL,
    faculty_lname varchar(10),
    gender varchar(1) NOT NULL,
    doj DATE,
    department varchar(10) NOT NULL,
    mobile_no varchar(10),
    id varchar(10),

    check (length(mobile_no)=10),
    check (department in ('CSE','ECE','EEE','BIOTECH','MME','CIVIL','MECH','INTMSC','MNC','VLSI')),
    check (gender in ('M','F','O')),
    primary key (id)
);

create table member(
    member_no varchar(10) NOT NULL,
    member_type varchar(10) NOT NULL,
    member_class varchar(10) NOT NULL,
    roll_no varchar(10),
    id varchar(10),
    primary key (member_no),
    foreign key (roll_no) REFERENCES student(roll_no),
    foreign key (id) REFERENCES faculty(id),
    foreign key (member_type) REFERENCES quota(member_type)
);

CREATE table authentication_system(
    login_id varchar(10) NOT NULL,
    password varchar(10) NOT NULL,

    check (
        length(password)>=8 and 
        length(password)<=20
    ),
    primary key (login_id)
);


create table staff(
    staff_fname varchar(10) NOT NULL,
    staff_lname varchar(10),
    gender varchar(1),
    mobile_no varchar(10),
    id varchar(10),
    doj date,
    primary key (id),
    check (gender in ('M','F','O')),
    check (length(mobile_no)=10)
);

create table quota(
    member_type VARCHAR(10),
    max_books int,
    max_duration TIMESTAMP,
    primary key (member_type)
);


create table book_issue(
    member_no varchar(10),
    accession_no varchar(10),
    doj date,
    primary key (member_no,accession_no)
);

create table report(
    due_date date,
    return_date date,
    due_amount int,
    member_no varchar(10),
    member_type varchar(10),
    primary key (member_no,member_type)
);

create table validation(
    login_id VARCHAR(10),
    password varchar(10),
    id varchar(10),
    check (length(password)>=8 and length(password)<=20),
    PRIMARY key (id,login_id)
);

create table keeps_track_of(
    id varchar(10),
    member_no varchar(10),
    primary key (member_no,id)
);