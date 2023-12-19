create table `departments` (
id int not null auto_increment,
name varchar(50) not null,
address varchar(50) not null,
phone int not null,
email varchar(50) not null,
website varchar(50) not null,
head_of_department varchar(20) not null,
primary key (`id`)
);
create table `degrees`(
id int not null auto_increment,
name varchar(50) not null,
`level` int not null,
address varchar(50) not null,
email varchar(50) not null,
website varchar(50) not null,
department_id int not null,
primary key (id),
foreign key (department_id) references departments (id)
);
create table students(
id int not null auto_increment,
name varchar(50) not null,
surname varchar(50) not null,
date_of_birth date not null,
fiscal_code char(12)not null,
enrolment_date date not null,
registration_number int not null,
email varchar(50) not null,
deegree_id int not null,
primary key (`id`),
foreign key (deegree_id) references degrees (id)
);
INSERT INTO departments (name, address, phone, email, website, head_of_department) 
VALUES ('gianni', 'via caio', '08123456', 'gianni@mail.it', 'gianni.com', 'economia');
INSERT INTO departments (name, address, phone, email, website, head_of_department) 
VALUES ('claudio', 'via luto', '08123457', 'claudio@mail.it', 'claudio.com', 'lettere');
INSERT INTO departments (name, address, phone, email, website, head_of_department) 
VALUES ('luigi', 'via le dita', '08123459', 'luigi@mail.it', 'luigi.com', 'anatomia');
INSERT INTO departments (name, address, phone, email, website, head_of_department) 
VALUES ('claudia', 'via cinzia', '08123452', 'claudia@mail.it', 'claudia.com', 'motorie');
INSERT INTO departments (name, address, phone, email, website, head_of_department) 
VALUES ('vanessa', 'via callo', '08123454', 'vanessa@mail.it', 'vanessa.com', 'storia');
INSERT INTO `degrees` (name, `level`, address, email, website, department_id) 
VALUES ('Computer Science', 1, '123 Main St', 'cs@example.com', 'csdept.com', 1);
INSERT INTO `degrees` (name, `level`, address, email, website, department_id) 
VALUES ('Electrical Engineering', 1, '456 Oak St', 'ee@example.com', 'eedept.com', 2);
INSERT INTO `degrees` (name, `level`, address, email, website, department_id) 
VALUES ('Business Administration', 2, '789 Maple St', 'business@example.com', 'businessdept.com', 3);
INSERT INTO `degrees` (name, `level`, address, email, website, department_id) 
VALUES ('Psychology', 2, '101 Pine St', 'psych@example.com', 'psychdept.com', 4);
INSERT INTO `degrees` (name, `level`, address, email, website, department_id) 
VALUES ('Mechanical Engineering', 1, '202 Cedar St', 'me@example.com', 'medept.com', 2);
INSERT INTO students (name, surname, date_of_birth, fiscal_code, enrolment_date, registration_number, email, deegree_id) 
VALUES ('John', 'Doe', '1995-05-15', 'ABCD12345678', '2021-09-01', 1001, 'john.doe@example.com', 1);


INSERT INTO students (name, surname, date_of_birth, fiscal_code, enrolment_date, registration_number, email, deegree_id) 
VALUES ('Jane', 'Smith', '1998-08-23', 'EFGH87654321', '2020-10-01', 1002, 'jane.smith@example.com', 2);


INSERT INTO students (name, surname, date_of_birth, fiscal_code, enrolment_date, registration_number, email, deegree_id) 
VALUES ('Alice', 'Johnson', '1997-02-10', 'IJKL56789012', '2022-01-15', 1003, 'alice.johnson@example.com', 3);


INSERT INTO students (name, surname, date_of_birth, fiscal_code, enrolment_date, registration_number, email, deegree_id) 
VALUES ('Bob', 'Anderson', '1996-11-30', 'MNOP34567890', '2019-12-05', 1004, 'bob.anderson@example.com', 4);


INSERT INTO students (name, surname, date_of_birth, fiscal_code, enrolment_date, registration_number, email, deegree_id) 
VALUES ('Eva', 'Miller', '1999-04-05', 'QRST90123456', '2023-03-20', 1005, 'eva.miller@example.com', 5);

update students set name = 'franca' where id = 5;
delete  from students where id>6;

