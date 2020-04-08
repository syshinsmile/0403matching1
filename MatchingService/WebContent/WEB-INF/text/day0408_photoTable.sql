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

create table photo_name(
photo varchar(30) primary key,
photo_name varchar(20)
);

alter table student add photo varchar(30) default '0'; 
alter table teacher add photo varchar(30) default '0';

alter table student add foreign key (photo) references photo_name(photo);
alter table teacher add foreign key (photo) references photo_name(photo);