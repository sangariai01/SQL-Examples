show databases;
create database ai_sangari;
USE ai_sangari;
show tables;

create table Ai_sys_info
 (SNO int not null primary key,	
Name varchar(50) not null,
 System_no int not null,
 ERROR varchar(255), 
 OS_Name varchar(100) not null,
 RAM varchar(50) not null,
 Hard_Disk_Size varchar(50), 
 Processer varchar(150) not null, 
 Mouse_Condition varchar(50) not null, 
 Keyboard_Condition	varchar(50) not null,
 Internet varchar(50), 
 Reff_no int not null,
 foreign key (Reff_no) references Ai_batch_Stud_list (SNO));

select * from Ai_sys_info;

insert into Ai_sys_info values (1 ,'Abdul Rahman  B ',42 ,'working ','windows 8.1 pro','2_Gb',' ','Intel_Pentium','working','workimg','',1),
(2,'Arun T ',43,'working','windows_8.1 ','2.00GB',' ','Intel_Core_ Duo ','working','working','',2)
,
(3,'Aysha sithika L ',17 ,'WORKING ','windows_10_pro','2GB',' ','INTEL_CORE_i3','working','working','',3)
,
(4,'Bhavani R ',8 ,'working','windows_10_pro','4.00 GB',' ','Intel_Core_i3','working','working','',4)
,
(5,'Fathima M ',4,'visual_C++_2019','windows_7_ultimate','2.00G',' ','Intel_Core_i3','working','working','',5)
,
(6,'Ghouse bi S ',18 ,'working  ','Windows 8.1 Pro','4GB',' ','INTEL CORE i3','working','working ','',6)
,
(7  ,'Gnanagowsalya K ',14 ,'working  ','windows 10 ProN ','8.00 G',' ','INTEL CORE i5 ','working','working ','',7)
,
(8  ,'Hajeera Sithika L ',16 ,'working  ','windows 8.1 ','2GB',' ','Intel Core 2 Duo','working','working','',8)
,
(9  ,'HARIHARAN A ',38 ,'working  ','windows 8.1 pro ','4.00GB',' ','INTEL CORE i3','working','working','',9)
,
(10  ,'Jayalakshmi R ',3 ,'working','windows 8.1 pro ','4.00 GB',' ','INTEL CORE i3 ','working','working','',10)
,
(11  ,'Jothika J ',15 ,'working','Windows 8.1 Pro ','4.00 GB',' ','INTEL CORE i3','working','working ','',11);

insert into Ai_sys_info values(12  ,'Kalaiarasan A ',32 ,'working','Windows 8.1 Pro','4.00 GB',' ','INTEL CORE i3 ','working','working','',12);

insert into Ai_sys_info values(13,'Kayalvizhi M ',01,'visual C++2019','Windows 7 Ultimate ','4.00 GB',' ','INTEL CORE i3 ','Working','working','',13);

insert into Ai_sys_info values(14  ,'Komaladevi. S ',7 ,'visualc++2019  ','Windows 8.1 Pro ','4.00  GB',' ','Intel Pentium ','Working','Working','',14)
,
(15  ,'LAVANYA M',5 ,'visual C++ 2019','Windows 7 Ultimate','4.00 GB',' ','Intel Core i3 ','Working','Working','',15)
,
(16  ,'Narayanan S ',19 ,'Working  ','windows 8.1 ','4.00GB',' ','INTEL CORE i3 ','working','working ','',16)
,
(17  ,'Prasanth P ',35 ,'C++2019  ','Windows 10 Pro ','2.00 GB',' ','Intel Pentium ','Working','working ','',17)
,
(18  ,'Priya S ',23 ,'not  support by this processer tryp','windows 7 proffessional ','4.00GP',' ','INTEL CORE i3 ','working','working','',18)
,
(19,'Punithavathi D ',9 ,'visual C++ 2019  ','windows 8.1 pro ','2.00 GB',' ','Intel Core 2 Duo ','working','working ','',19)
,
(20  ,'Raghul S ',39 ,'not supported by the processor  ','windows 7 ','2.00 GB',' ','Intel Pentium ','Working','working','',20)
,
(21  ,'Roobankumar  K ',34 ,'processor not supported  ','windows 7 ultimate ','2.00GB',' ','intel core 2 duo ','working','working','',21)
,
(22,'Sangari S ',2 ,'Working','windows 8.1 pro','2.00 GB',' ','INTEL Pentium','working','Working','',22)
,
(23  ,'Santhiya S ',13 ,'not supported by this processor type  ','windows 10 pro ','4.00 GB',' ','Intel Core 2 Duo ','working','Working','',23)
,
(24  ,'Saranya N ',6 ,'not supported by this processor type  ','Windows 7 Professional ','2.00 GB',' ','INTEL CORE i3 ','Working','Working ','',24)
,
(25,'Saravanan M ',37 ,'Working  ','Windows 8.1 Pro ','4.00 GB',' ','INTEL CORE i3 ','Working','Working ','',25)
,
(26,'Snega D ',10 ,'working  ','windows 10 pro ','4.00 GB',' ','intel core i3 ','working','working ','',26)
,
(27,'Srinidhi S ',12 ,'visual C++2019  ','windows 8.1 ','2.00 GB',' ','INTEL CORE i3 ','working','working ','',27)
,
(28  ,'Tamil V ',11 ,'visual C++2019  ','windows 8.1 ','4.00 GB',' ','INTEL CORE i3 ','working','working ','',28)
,
(29  ,'Vinu Andrews S ',33 ,'working  ','windows 8.1 ','2GB',' ','Intel Core 2 Duo ',' working','working ','',29)
,
(30,'Yogarajan K ',36 ,'Not supported by the processor','windows 10 pro ','2 GB RAM',' ','Intel Pentium','working','working','',30);
