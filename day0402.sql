use matching;
delete from student;
delete from teacher;
drop table student;
drop table teacher;
drop table subject;

create table student(
s_num int(30) auto_increment primary key,
name varchar(10),
password varchar(20),
s_email varchar(20) unique,
s_phone varchar(20),
s_tag varchar(20)
);

create table teacher(
t_num int(30) auto_increment primary key,
name varchar(10),
password varchar(20),
t_email varchar(20) unique,
t_phone varchar(20)
);

use matching;
select * from student;


insert into student(name,password,s_email,s_phone,s_tag) values("6","6","6","6","t    e    s    t");

select * from teacher;
	