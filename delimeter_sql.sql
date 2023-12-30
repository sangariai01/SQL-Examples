show databases;
USE ai_sangari;
show tables;

create table sanz_table(sl_no int not null primary key, name varchar(50) not null, system_no int not null, Ram varchar(20) not null, Reff_no int not null);

select * from sanz_table;

delimiter $$

drop procedure if exists insertC;$$
create procedure insertC (
in sl_noParam int,
in nameParam varchar(50),
in system_noParam int,
in RamParam varchar(50),
in Reff_noParam int
)
begin
insert into sanz_table (sl_no,name,system_no,Ram,Reff_no)
values (sl_noParam,nameParam,system_noParam,RamParam,Reff_noParam);
end $$
delimiter ;

call insertC(5,'sam',06,'8GB',07);
select * from sanz_table;

----------end------------------------------------------------------------------

delimiter $$

drop procedure if exists insertU;$$
create procedure insertU (
in sl_noParam int,
in nameParam varchar(50),
in system_noParam int,
in RamParam varchar(50),
in Reff_noParam int
)
begin
update sanz_table set name=nameParam, system_no=system_noParam ,Ram=RamParam,Reff_no=Reff_noParam where sl_no=sl_noParam;

end $$
delimiter ;

call insertU(4,'sanz',08,'8GB',08);
select * from sanz_table;

----------end----------------------------------------------------------

delimiter $$

drop procedure if exists insertUpdate;$$
create procedure insertUpdate (
in tablename varchar(100),
in colunmname1 varchar(50),
in columnvalue1 varchar(50),
in colunmname2 varchar(50),
in columnvalue2 varchar(50),
in colunmname3 varchar(50),
in columnvalue3 int,
in conditname varchar(75),
in conditvalue int
)
begin
set @updatestatement = concat('update ',tablename,' set ',colunmname1,'=\'',columnvalue1,'\',',colunmname2,'=\'',columnvalue2,'\',' ,colunmname3,'=\'',columnvalue3,'\' where ',conditname,'=',conditvalue);
prepare stmnt from @updatestatement;
execute stmnt;

end $$
delimiter ;

call insertUpdate('sanz_table','name','vjsan','Ram','12GB','Reff_no',11,'sl_no',4);
select * from sanz_table;

----------end-------------------------------------------------------------

delimiter $$

drop procedure if exists deletepro;$$
create procedure deletepro (
in tablename varchar(100),
in colunmname1 varchar(50)
)
begin
set @dropstatement = concat('alter table ',tablename,' drop column ',colunmname1);
prepare stmnt from @dropstatement;
execute stmnt;

end $$
delimiter ;

call deletepro('sanz_table','name');

----------end---------------------------------------------------------

delimiter $$

drop procedure if exists droppro;$$
create procedure droppro (
in tablename varchar(100),
in colunmname1 varchar(50),
in columnvalue1 varchar(50)
)
begin
set @deletestatement = concat('delete from ',tablename,' where ',colunmname1,'=\'',columnvalue1,'\'');
prepare stmnt from @deletestatement;
execute stmnt;

end $$
delimiter ;

call droppro('sanz_table','Ram','8GB');
select * from sanz_table;

----------end---------------------------------------------------------

delimiter $$

drop procedure if exists addcolumn;$$
create procedure addcolumn (
in tablename varchar(100),
in colunmname1 varchar(50)
)
begin
set @addstatement = concat('alter table ',tablename,' add column ',colunmname1,' int ');
prepare stmnt from @addstatement;
execute stmnt;

end $$
delimiter ;

call addcolumn('sanz_table', ' Age ');
select * from sanz_table;

----------end---------------------------------------------------------

delimiter $$

drop procedure if exists modifycolumn_varchar;$$
create procedure modifycolumn_varchar (
in tablename varchar(100),
in colunmname1 varchar(50)
)
begin
set @addstatement = concat('alter table ',tablename,' modify column ',colunmname1,' long');
prepare stmnt from @addstatement;
execute stmnt;

end $$
delimiter ;

call modifycolumn_varchar('sanz_table','Reff_no');
select * from sanz_table;
describe sanz_table;

----------end---------------------------------------------------------

delimiter $$

drop procedure if exists modifyname_varchar;$$
create procedure modifyname_varchar (
in tablename varchar(100),
in colunmname1 varchar(50),
in colunmname2 varchar(50)
)
begin
set @addstatement = concat('alter table ',tablename,' rename column ',colunmname1,' to ', colunmname2);
prepare stmnt from @addstatement;
execute stmnt;

end $$
delimiter ;

call modifyname_varchar('sanz_table','name','Name');
select * from sanz_table;

----------end---------------------------------------------------------

delimiter $$

drop procedure if exists insertname;$$
create procedure insertname (
in tablename varchar(100),
in colunmname1 varchar(50),
in colunmvalue1 varchar(50),
in colunmname2 varchar(50),
in colunmvalue2 int
)
begin
set @addstatement = concat('update ',tablename,' set ',colunmname1,' =\' ', colunmvalue1, '\' where ',colunmname2,'=',colunmvalue2);
prepare stmnt from @addstatement;
execute stmnt;

end $$
delimiter ;

call insertname('sanz_table','Name','San','sl_no','4');
 select * from sanz_table;
 
----------end---------------------------------------------------------

 delimiter $$

drop procedure if exists insertinto;$$
create procedure insertinto (
in tablename varchar(100),
in colunmvalue1 int,
in columnvalue2 int,
in colunmvalue3 varchar(50),
in columnvalue4 int,
in colunmvalue5 varchar(50)
)
begin
set @updatestatement = concat('insert into ',tablename,' values \( \'',colunmvalue1,' \' , \' ',columnvalue2,' \' , \' ',colunmvalue3,' \' , \' ',columnvalue4,' \' , \' ' ,colunmvalue5,' \' \) ');
prepare stmnt from @updatestatement;
execute stmnt;

end $$
delimiter ;

call insertinto('sanz_table','6','12','4GB','3','Vjsan');
select * from sanz_table;

----------end---------------------------------------------------------

delimiter $$

drop procedure if exists createtable;$$
create procedure createtable (
in tablename varchar(100),
in colunmvalue1 varchar(50),
in columnvalue2 varchar(50),
in colunmvalue3 varchar(50)
)
begin
set @updatestatement = concat('create table ',tablename,' \( ',colunmvalue1,' varchar\(50\) , ',columnvalue2,' varchar\(50\) , ',colunmvalue3,
' varchar\(50\) \)' );
prepare stmnt from @updatestatement;
execute stmnt;

end $$
delimiter ;

call createtable('sanz','Name','Age','Location');
select * from sanz;

----------end---------------------------------------------------------

 











 









