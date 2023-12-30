show databases;
use ai_sangari;
show tables;
select * from Sanz_class_details;
select * from Sanz_stu_mark_details;
select * from Sanz_class_details join Sanz_stu_mark_details on Sanz_class_details.Sl_no = Sanz_stu_mark_details.Sl_no;

create table Sanz_stud_login_details(Sl_no int not null primary key, F_Name varchar(50) not nulL, L_Name varchar(50) not null,
Email varchar(50) unique, User_id varchar(50) not null unique, Password varchar(10) not null,
foreign key (Sl_no) references Sanz_class_details (Sl_no) , foreign key (Sl_no) references Sanz_stu_mark_details (Sl_no));

select * from Sanz_stud_login_details;

insert into Sanz_stud_login_details values(07,'Flora','s','flora@gmail.com','Flor123','abc123'),
(08,'Dhivya','T','Dhiv@gmail.com','Dhiv123','123abc'),(09,'Begum','G','beg12@gmail.com','Beg111','gum321');

update Sanz_stud_login_details set User_id='Begum111' where Sl_no = 09;

alter table Sanz_stud_login_details add column M_Name varchar(50);

update Sanz_stud_login_details set M_Name =
case Sl_no
when 07 then 's'
when 08 then 'g'
when 09 then 'c'
end
where Sl_no in (07,08,09) ;

call s();
call M();

alter table Sanz_stud_login_details add column created_on date ;

update Sanz_stud_login_details set created_on = '2022-12-03';

alter table Sanz_stud_login_details add column Modified_on varchar(10);

alter table Sanz_stud_login_details modify column Modified_on date;

alter table Sanz_stud_login_details add column created_by varchar(50) , 
add column modified_by varchar(50);

update Sanz_stud_login_details set Modified_on =
case Sl_no
when 07 then '2023-02-13'
when 08 then '2023-03-02'
when 09 then '2023-11-23'
end,
created_by =
case Sl_no
when 07 then 'Sanz'
when 08 then 'Sam'
when 09 then 'Sanz'
end,
 modified_by =
 case Sl_no
when 07 then 'Jaya'
when 08 then 'Kayal'
when 09 then 'laksh'
end
 where Sl_no in(08);
 
 select * from Sanz_stud_login_details;
 
 alter table Sanz_stud_login_details modify column M_Name varchar(50) first ;

alter table Sanz_stud_login_details modify column F_Name varchar(50) first ;

alter table Sanz_stud_login_details modify column Sl_no int not null first ;

select Email from Sanz_stud_login_details where Sl_no = 07 ;

select Name, DOB, Total,Avrg from Sanz_class_details S1 join Sanz_stu_mark_details S2 on S1.Sl_no = S2.Sl_no ;

select Name, DOB, Total,Avrg from Sanz_class_details S1 left join Sanz_stu_mark_details S2 on S1.Sl_no = S2.Sl_no ;

select Name, DOB, Total,Avrg from Sanz_class_details S1 right join Sanz_stu_mark_details S2 on S1.Sl_no = S2.Sl_no ;

select Address, DOB, Total,Avrg from Sanz_class_details S1 inner join Sanz_stu_mark_details S2 on S1.Sl_no = S2.Sl_no ;


















