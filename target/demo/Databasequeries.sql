show tables;
use attendance;
select * from staff; 
select * from admin; 
select * from leave_request; 
select * from staff_21it031_leave; 
select * from staff_21it031_leave_year; 
select * from staff_info; 
delete  from staff where role="secretary";
desc staff;
create table staff_leave(staff_name varchar(30),staff_dept varchar(10)
,staff_id varchar(7),role varchar(10),year int ,month int,date int);
drop table staff_leave;
select * from staff_leave; 