show databases;
use practice_sql;
show tables;

             # Write a SQL Query to fetch all the duplicate records in a table.

create table user (user_id int primary key , user_name varchar (30) , email varchar(50));

insert into user values (1, 'Sumit', 'sumit@gmail.com') , (2, 'Reshma' , 'reshma@gmail.com'),
						(3, 'Farhana', 'farhana@gmail.com'), (4, 'Robin', 'robin@gmail.com'),
                        (5, 'Robin', 'robin@gmail.com');

select * from user;       
select user_id, user_name, email
from
(select *,
row_number() over (partition by user_name order by user_id) as rn
from user u
order by user_id) x
where x.rn <> 1;
                 
