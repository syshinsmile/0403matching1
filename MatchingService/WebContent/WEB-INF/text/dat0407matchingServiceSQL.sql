Skip to content
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 
@syshinsmile 
Learn Git and GitHub without any code!
Using the Hello World guide, you’ll start a branch, write comments, and open a pull request.


yurimingly
/
MatchingService
1
10
 Code Issues 1 Pull requests 0 Actions Projects 0 Wiki Security Insights
MatchingService/0403sql.sql
@yurimingly yurimingly 0403 stu, tea, sub, board sql 입니다.
4e047e4 27 seconds ago
68 lines (56 sloc)  1.42 KB
  
create database matching;
use matching;

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
select * from teacher;
insert into student(name,password,s_email,s_phone,s_tag) values("6","6","6","6","t    e    s    t");

 
drop table subject;
create table subject(
sub_num int(30) primary key,
sub_count varchar(20),
sub_score int(5),
t_email varchar(20),
s_email varchar(20),
total varchar(50),
subname varchar(20),
start varchar(20),
end varchar(20),
cost int(20),
tag varchar(20)
);

ALTER TABLE subject ADD FOREIGN KEY (t_email) REFERENCES teacher(t_email);
ALTER TABLE subject ADD FOREIGN KEY (s_email) REFERENCES student(s_email);

alter table student add foreign key (photo) references photo_name(photo);
alter table teacher add foreign key (photo) references photo_name(photo);

delete from board where code=1;

drop table board;
create table board(
code int(20) auto_increment primary key,
title varchar(100),
content varchar(500),
writer varchar(20),
reg_datetime timestamp default now(),
viewcnt int default 0
);

use matching;
insert into board(title,content,writer,reg_datetime,viewcnt) values("게시판첫번째글","첫번째내용","첫번째 글쓴이",now(),0);
select * from board;
select * from student;
select * from teacher;

delete from board where code=3;
© 2020 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About;

use madang;
select * from test;

alter table test add ref varchar(10) not null default '0'; 

use matching;
select * from student;
select * from teacher;
select * from photo_name;

alter table student add photo varchar(30) default '0'; 
alter table teacher add photo varchar(30) default '0';

create table photo_name(
photo varchar(30) primary key,
photo_name varchar(20)
);
 
select * from photo_name;
insert into photo_name values(0,0);
insert into photo_name values("null","null");

insert into student(name,password,s_email,s_phone,s_tag,photo) values('test','test','test@test.com','010-2415-1242','JAVA','test');

delete from student where name='test';
delete from student where s_num=27;