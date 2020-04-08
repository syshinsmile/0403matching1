
create database matching;

use matching;

 

create table student(

s_num int(30) auto_increment primary key,
name varchar(10),
password varchar(20),
s_email varchar(20) unique,
s_phone int(20),
s_tag varchar(20)
);

 

create table teacher(

t_num int(30) primary key,

t_email varchar(20) unique,

name varchar(10),

password varchar(20),

t_phone int(20)

);

 

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

	