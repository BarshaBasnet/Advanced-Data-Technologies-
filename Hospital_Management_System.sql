CREATE TYPE UsrType AS OBJECT(
   UserName varchar2(20),
 Email varchar2(35),
 DOB date,
 Address varchar2(15),
 Password varchar2(20)
 );
/


drop TYPE UsrType;


CREATE TYPE address_t AS OBJECT (city VARCHAR2(50),zip VARCHAR2(5)) NOT FINAL;
/

CREATE TYPE address_tab IS TABLE OF address_t;
/

drop TYPE address_t;
drop TYPE address_tab;

Create table Usr(
Id number primary key not null,
Name varchar2(15),
Email varchar2(40),
DOB timestamp(2),
Address address_tab,
Password varchar2(50)
)
NESTED TABLE Address STORE AS Usr_addresses;

insert into Usr(Id,Name,Email, DOB, Address, Password) values 
(1,'Barsha','Barshabasnet4422@gmail.com','11/Dec/2000 01:02:00',address_tab(address_t('Kathmandu','12345')),'2131');
insert into Usr(Id,Name,Email, DOB, Address, Password) values 
(2,'Urmila','Urmilabasnet1234@gmail.com','10/Aug/1994 02:03:00',address_tab(address_t('Kathmandu','245')),'2244');
insert into Usr(Id,Name,Email, DOB, Address, Password) values
(3,'Balkrishna','Balkrishnabasnet2424@gmail.com','2/Jan/1993 03:04:00',address_tab(address_t('Kathmandu','345')),'2113');
insert into Usr(Id,Name,Email, DOB, Address, Password) values 
(4,'Ujjwal','Ujjwalbasnet2244@gmail.com','8/Dec/1999 04:05:00',address_tab(address_t('Kathmandu','125')),'1212');
insert into Usr(Id,Name,Email, DOB, Address, Password) values 
(5,'Anusha','Rimalanusha2020@gmail.com','5/Feb/2021 05:06:00',address_tab(address_t('Kathmandu','154')),'1111');
insert into Usr(Id,Name,Email, DOB, Address, Password) values 
(6,'Ram','Rambasnet232@gmail.com','11/Feb/2000 06:07:00',address_tab(address_t('Kathmandu','225')),'2311');
insert into Usr(Id,Name,Email, DOB, Address, Password) values 
(7,'Shyam','Shyambasnet234@gmail.com','12/Aug/1995 07:08:00',address_tab(address_t('Kathmandu','1512')),'4422');
insert into Usr(Id,Name,Email, DOB, Address, Password) values
(8,'Hari','Haribasnet468@gmail.com','13/Sep/1996 08:09:00',address_tab(address_t('Kathmandu','2233')),'1321');
insert into Usr(Id,Name,Email, DOB, Address, Password) values 
(9,'Gopal','Gopalbasnet669@gmail.com','14/Dec/1997 09:10:00',address_tab(address_t('Kathmandu','1515')),'1211');
insert into Usr(Id,Name,Email, DOB, Address, Password) values 
(10,'Anusha','Rimalanusha2021@gmail.com','15/Dec/2001 10:11:00',address_tab(address_t('Kathmandu','445')),'1000');
insert into Usr(Id,Name,Email, DOB, Address, Password) values
(11,'Ganga','Gangabasnet2322@gmail.com','22/Feb/2000 11:12:00',address_tab(address_t('Kathmandu','555')),'2311');
insert into Usr(Id,Name,Email, DOB, Address, Password) values 
(12,'Jamuna','Jamunabasnet2344@gmail.com','23/Aug/1995 12:13:00',address_tab(address_t('Kathmandu','2345')),'4422');
insert into Usr(Id,Name,Email, DOB, Address, Password) values
(13,'Pari','Paribasnet4688@gmail.com','24/Sep/1996 12:12:00',address_tab(address_t('Kathmandu','111')),'1321');
insert into Usr(Id,Name,Email, DOB, Address, Password) values 
(14,'Ashma','Abasnet6699@gmail.com','25/Dec/1997 11:02:00',address_tab(address_t('Kathmandu','005')),'1211');
insert into Usr(Id,Name,Email, DOB, Address, Password) values 
(15,'Reshma','Ranusha2012@gmail.com','26/Dec/2001 08:05:00',address_tab(address_t('Kathmandu','567')),'1000');

select * from Usr;

drop table Usr cascade constraints;
commit; `   

create table Doctor
(
Id number primary key not null,
Usr_Id number not null,
Mobile varchar2(15),
UserName varchar2(25),
DoctorType UsrType,
CONSTRAINT Usr_fk Foreign KEY (Usr_id) References Usr(Id)
);

insert into Doctor  values (1,1,'444546478','Raj',UsrType('Barsha','Barshabasnet4422@gmail.com','11/Dec/2000','Kirtipur','2131'));
insert into Doctor  values (2,2,'012345678','Basnet',UsrType('Urmila','Urmilabasnet1234@gmail.com','10/Aug/1994','Bhaktapur','2244'));
insert into Doctor  values (3,3,'012345671','Dhakal',UsrType('Balkrishna','Balkrishnabasnet2424@gmail.com','2/Jan/1993','Bhatkyapati','2113'));
insert into Doctor  values (4,4,'012345674','Shrestha',UsrType('Ujjwal','Ujjwalbasnet2244@gmail.com','8/Dec/1999','Baneshowr','1212'));
insert into Doctor  values (5,5, '012345675','Rimal',UsrType('Anusha','Rimalanusha2020@gmail.com','5/Feb/2021','Dhangadi','1111'));
insert into Doctor  values (6,6,'012345676','Adhikari', UsrType('Ram','Rambasnet232@gmail.com','11/Feb/2000','Kirtipur','2311'));
insert into Doctor  values (7,7,'012345677','Bahadur', UsrType('Shyam','Shyambasnet234@gmail.com','12/Aug/1995','Bhaktapur','4422'));
insert into Doctor  values (8,8,'0123456789','Sharmila',UsrType('Hari','Haribasnet468@gmail.com','13/Sep/1996','Dhankuta','1321'));
insert into Doctor  values (9,9,'012345674','Pramila',UsrType('Gopal','Gopalbasnet669@gmail.com','14/Dec/1997','Dharan','1211'));
insert into Doctor  values (10,10,'0123456782','Suman',UsrType('Anusha','Rimalanusha2021@gmail.com','15/Dec/2001','Bhaisipati','1000'));
insert into Doctor  values (11,11,'2324252627','Gita',UsrType('Ganga','Gangabasnet2322@gmail.com','22/Feb/2000','Kirtipur','2311'));
insert into Doctor  values (12,12,'28293031','Nita',UsrType('Jamuna','Jamunabasnet2344@gmail.com','23/Aug/1995','Bhaktapur','4422'));
insert into Doctor  values (13,13,'32333435','Puja',UsrType('Pari','Paribasnet4688@gmail.com','24/Sep/1996','Dhankuta','1321'));
insert into Doctor  values (14,14,'363738394','Gautam',UsrType('Ashma','Abasnet6699@gmail.com','25/Dec/1997','Dharan','1211'));
insert into Doctor  values (15,15,'40414243','Gambhir',UsrType('Reshma','Ranusha2012@gmail.com','26/Dec/2001','Bhaisipati','1000'));

select * from Doctor

drop table Doctor cascade Constraints;
commit;


create table Patient(
Id number primary key not null,
Usr_Id number not null,
Mobile varchar2(20),
UserName varchar2(30),
PatientType UsrType,
CONSTRAINT Usr_fk1 Foreign KEY (Usr_id) References Usr(Id)
);


insert into Patient values (1,1,'999999999','Barsha', UsrType('Barsha','Barshabasnet4422@gmail.com','11/Dec/2000','Kirtipur','2131'));
insert into Patient values (2,2,'988888888','Ujjwal', UsrType('Urmila','Urmilabasnet1234@gmail.com','10/Aug/1994','Bhaktapur','2244'));
insert into Patient values (3,3,'977777777','Urmila',UsrType('Balkrishna','Balkrishnabasnet2424@gmail.com','2/Jan/1993','Bhatkyapati','2113'));
insert into Patient values (4,4,'966666666','Balkrishna',UsrType('Ujjwal','Ujjwalbasnet2244@gmail.com','8/Dec/1999','Baneshowr','1212'));
insert into Patient values (5,5,'955555555','Anusha',UsrType('Anusha','Rimalanusha2020@gmail.com','5/Feb/2021','Dhangadi','1111'));
insert into Patient values (6,6,'999999998','Ram',UsrType('Ram','Rambasnet232@gmail.com','11/Feb/2000','Kirtipur','2311'));
insert into Patient values (7,7,'988888887','Shyam',UsrType('Shyam','Shyambasnet234@gmail.com','12/Aug/1995','Bhaktapur','4422'));
insert into Patient values (8,8,'98793452','Hari',UsrType('Hari','Haribasnet468@gmail.com','13/Sep/1996','Dhankuta','1321'));
insert into Patient values (9,9,'954321126','Gopal',UsrType('Gopal','Gopalbasnet669@gmail.com','14/Dec/1997','Dharan','1211'));
insert into Patient values (10,10,'98765421','Anuja',UsrType('Anusha','Rimalanusha2021@gmail.com','15/Dec/2001','Bhaisipati','1000'));
insert into Patient values (11,11,'98765431','Bimala',UsrType('Ganga','Gangabasnet2322@gmail.com','22/Feb/2000','Kirtipur','2311'));
insert into Patient values (12,12,'98765441','Kalpana',UsrType('Jamuna','Jamunabasnet2344@gmail.com','23/Aug/1995','Bhaktapur','4422'));
insert into Patient values (13,13,'98765451','Aarati',UsrType('Pari','Paribasnet4688@gmail.com','24/Sep/1996','Dhankuta','1321'));
insert into Patient values (14,14,'98765461','Abhishek',UsrType('Ashma','Abasnet6699@gmail.com','25/Dec/1997','Dharan','1211'));
insert into Patient values (15,15,'98765471','Bidur',UsrType('Reshma','Ranusha2012@gmail.com','26/Dec/2001','Bhaisipati','1000'));

select * from Patient

drop table Patient cascade Constraints;
 commit;


create table Hospital
(Id number primary key not null,
Patient_id number not null,
Doctor_id number not null,
Medicine_id number not null,
Name VARCHAR2(20),
Type VARCHAR2(25),
Description varchar2(30),
Address address_t,
CONSTRAINT Patient_fk Foreign KEY (Patient_id) References Patient(Id),
CONSTRAINT Doctor_fk Foreign KEY (Doctor_id) References Doctor(Id),
CONSTRAINT Medicine_fk Foreign KEY (Medicine_id) References Medicine(ID)
);
insert into Hospital(Id,Patient_id,Doctor_id,Medicine_id,Name,Type,Description,Address) values 
(1,1,1,1,'Vayodha','Eye-hospital','best eye hospital', address_t('Kathmandu','445'));
insert into Hospital(Id,Patient_id,Doctor_id,Medicine_id,Name,Type,Description,Address) values 
(2,2,2,2,'Om','Heart-hospital','best heart hospital',address_t('Kathmandu','408'));
insert into Hospital(Id,Patient_id,Doctor_id,Medicine_id,Name,Type,Description, Address) values 
(3,3,3,3,'Neuro','Skin-hospital','best skin hospital',address_t('Kathmandu','450'));
insert into Hospital(Id,Patient_id,Doctor_id,Medicine_id,Name,Type,Description,Address) values 
(4,4,4,4,'Gangalal','teeth-hospital','best teeth hospital',address_t('Kathmandu','458'));
insert into Hospital(Id,Patient_id,Doctor_id,Medicine_id,Name,Type,Description, Address) values 
(5,5,5,5,'Vayodha','Eye-hospital','best eye hospital', address_t('Kathmandu','459'));
insert into Hospital(Id,Patient_id,Doctor_id,Medicine_id,Name,Type,Description, Address) values 
(6,6,6,6,'Om','Heart-hospital','best heart hospital',address_t('Kathmandu','457'));
insert into Hospital(Id,Patient_id,Doctor_id,Medicine_id,Name,Type,Description, Address) values 
(7,7,7,7,'Neuro','Skin-hospital','best skin hospital', address_t('Kathmandu','477'));
insert into Hospital(Id,Patient_id,Doctor_id,Medicine_id,Name,Type,Description, Address) values 
(8,8,8,8,'Gangalal','teeth-hospital','best teeth hospital', address_t('Kathmandu','456'));
insert into Hospital(Id,Patient_id,Doctor_id,Medicine_id,Name,Type,Description,Address) values 
(9,9,9,9,'Vayodha','Eye-hospital','best eye hospital', address_t('Kathmandu','455'));
insert into Hospital(Id,Patient_id,Doctor_id,Medicine_id,Name,Type,Description, Address) values 
(10,10,10,10,'Om','Heart-hospital','best heart hospital',address_t('Kathmandu','454'));
insert into Hospital(Id,Patient_id,Doctor_id,Medicine_id,Name,Type,Description, Address) values 
(11,11,11,11,'Hems','Skin-hospital','best skin hospital',address_t('Kathmandu','440'));
insert into Hospital(Id,Patient_id,Doctor_id,Medicine_id,Name,Type,Description, Address) values 
(12,12,12,12,'Gangalal','teeth-hospital','best teeth hospital', address_t('Kathmandu','442'));
insert into Hospital(Id,Patient_id,Doctor_id,Medicine_id,Name,Type,Description, Address) values 
(13,13,13,13,'Grande','Eye-hospital','best eye hospital', address_t('Kathmandu','443'));
insert into Hospital(Id,Patient_id,Doctor_id,Medicine_id,Name,Type,Description, Address) values 
(14,14,14,14,'Om','Heart-hospital','best heart hospital',address_t('Kathmandu','445'));
insert into Hospital(Id,Patient_id,Doctor_id,Medicine_id,Name,Type,Description, Address) values 
(15,15,15,15,'Neuro','Skin-hospital','best skin hospital',address_t('Kathmandu','446'));

select * from Hospital

drop table Hospital cascade Constraints

commit;


create table Appointment
(Id number PRIMARY KEY not null,
Doctor_id number not null,
Appointment_Number VARCHAR2(25),
Appointment_type varchar2(30),
Appointment_Date date,
Description varchar2(300),
CONSTRAINT Doctor_fk1 Foreign KEY (Doctor_id) References Doctor(Id)
);

insert into Appointment(Id,Doctor_id, Appointment_Number,Appointment_type, Appointment_Date, Description) values (1,1,'478','Vaccinations','7/Jan/2022','Corona Vaccine');
insert into Appointment(Id,Doctor_id, Appointment_Number,Appointment_type, Appointment_Date, Description)values (2,2,'448','Vaccinations','7/Jan/2022','Corona Vaccine');
insert into Appointment(Id,Doctor_id,Appointment_Number,Appointment_type, Appointment_Date, Description) values (3,3,'471','EyeCare','8/Jan/2022','Eye pain');
insert into Appointment(Id,Doctor_id, Appointment_Number,Appointment_type, Appointment_Date, Description) values (4,4,'472','Mammograms','1/Jan/2022','Vaccine');
insert into Appointment(Id,Doctor_id, Appointment_Number,Appointment_type, Appointment_Date, Description)values (5,5,'444546473','Mammograms','2/Jan/2022','Vaccine');
insert into Appointment(Id, Doctor_id, Appointment_Number,Appointment_type, Appointment_Date, Description) values (6,6,'444546474','Vaccinations','3/Jan/2022','BCG Vaccine');
insert into Appointment(Id, Doctor_id, Appointment_Number,Appointment_type, Appointment_Date, Description) values (7,7,'444546475','Mammograms','4/Jan/2022','Vaccine');
insert into Appointment(Id, Doctor_id, Appointment_Number,Appointment_type, Appointment_Date, Description) values (8,8,'444546476','Routine checkup','5/Jan/2022','Wholebody checkup');
insert into Appointment(Id, Doctor_id, Appointment_Number,Appointment_type, Appointment_Date, Description) values (9,9,'444546477','Vaccinations','6/Jan/2022','chickenpox Vaccine');
insert into Appointment(Id, Doctor_id, Appointment_Number,Appointment_type, Appointment_Date, Description) values (10,10,'444546478','Routine checkup','10/Jan/2022','Blood test');
insert into Appointment(Id, Doctor_id, Appointment_Number,Appointment_type, Appointment_Date, Description) values (11,11,'444546479','Vaccinations','11/Jan/2022','Chickenpox Vaccine');
insert into Appointment(Id, Doctor_id, Appointment_Number,Appointment_type, Appointment_Date, Description) values (12,12,'4445464710','Routine checkup','12/Jan/2022',' Teeth checkup');
insert into Appointment(Id, Doctor_id, Appointment_Number,Appointment_type, Appointment_Date, Description) values (13,13,'4445464780','Mammograms','13/Jan/2022','Vaccine');
insert into Appointment(Id, Doctor_id, Appointment_Number,Appointment_type, Appointment_Date, Description) values (14,14,'4445464719','EyeCare','14/Jan/2022','Eye checkup');
insert into Appointment(Id, Doctor_id, Appointment_Number,Appointment_type, Appointment_Date, Description) values (15,15,'4445464718','Mammograms','15/Jan/2022','Vaccine');

select * from Appointment

drop table Appointment cascade Constraints

commit;

create table Medicine
(ID number PRIMARY KEY not null,
Name varchar2(25),
Medicine_Company varchar2(25),
Cost varchar2(20),
Type varchar2(25),
Description varchar2(500)
);

insert into Medicine(ID,Name,Medicine_Company,Cost,Type,Description) values (1,'Analgesics','ABC','1300', 'aspirin', 'It relieves pain without causing numbness ');
insert into Medicine(ID,Name,Medicine_Company,Cost,Type,Description) values (2,'Paracetamol','BCD','50','Codeine','it relieves mild to moderate pain');
insert into Medicine(ID,Name,Medicine_Company,Cost,Type,Description) values (3,'Antibiotics', 'CDE', '500', 'Penicillin', 'used to kill/slow down the growth of bacteria');
insert into Medicine(ID,Name,Medicine_Company,Cost,Type,Description) values (4,'Psychotherapeuti', 'FGH', '1000','Stimulant', 'used to alter abnormal thinking, feelings');
insert into Medicine(ID,Name,Medicine_Company,Cost,Type,Description) values (5,'Psychotherapeuti','HIJ','1500','Antidepressant','to reduce tension and anxiety.');
insert into Medicine(ID,Name,Medicine_Company,Cost,Type,Description) values (6,'Psychotherapeuti','HIJk','1200','Antidepressant','to reduce tension and anxiety.');
insert into Medicine(ID,Name,Medicine_Company,Cost,Type,Description) values (7,'Psychotherapeuti','HIJM','800','Antipsychotic', 'treat psychiatric illnesses such as schizophrenia');
insert into Medicine(ID,Name,Medicine_Company,Cost,Type,Description) values (8,'Psychotherapeuti','HIJN','1300','Antipsychotic','treats psychiatric illnesses such as schizophrenia.');
insert into Medicine(ID,Name,Medicine_Company,Cost,Type,Description) values (9,'Psychotherapeuti', 'FGH', '1000','Stimulant', 'used to alter abnormal thinking, feelings');
insert into Medicine(ID,Name,Medicine_Company,Cost,Type,Description) values (10,'Antibiotics', 'CDE', '500', 'Penicillin', 'used to kill/slow down the growth of bacteria');
insert into Medicine(ID,Name,Medicine_Company,Cost,Type,Description) values (11,'Analgesics','ABC','1300', 'aspirin', 'It relieves pain without causing numbness ');
insert into Medicine(ID,Name,Medicine_Company,Cost,Type,Description) values (12,'Psychotherapeuti','HIJM','800','Antipsychotic', 'treat psychiatric illnesses such as schizophrenia');
insert into Medicine(ID,Name,Medicine_Company,Cost,Type,Description) values (13,'Analgesics','ABC','1300', 'aspirin', 'It relieves pain without causing numbness ');
insert into Medicine(ID,Name,Medicine_Company,Cost,Type,Description) values (14,'Antibiotics', 'CDE', '500', 'Penicillin', 'used to kill/slow down the growth of bacteria');
insert into Medicine(ID,Name,Medicine_Company,Cost,Type,Description) values (15,'Psychotherapeuti','HIJ','1500','Antidepressant','to reduce tension and anxiety.');

select * from Medicine

drop table Medicine 
commit;

//Task 4:

Select
  p.Id, p.Mobile,  p.UserName,
  m.ID,m.Name,m.Medicine_Company,
  d.Id, d. Mobile, d. UserName
  
  From Patient p
  RIGHT OUTER JOIN
  Medicine m ON p.ID = m.ID
  INNER JOIN
  Doctor d ON m.Id = d.Id;
  
  
  Select
  h.Id, h.Name, h.Type,
  p.Id, p.Mobile,  p.UserName,
  d.Id, d. Mobile, d. UserName
  
  From Hospital h
  Right Outer Join
  Patient p ON h.Id = p.Id
  
  INNER JOIN
  Doctor d ON p.Id = d.Id;
  

SELECT  
 u.Id,u.Name,u.Email,u.DOB,u.Address,u.Password,b.*  
FROM Usr u,  
TABLE(u.Address) b 
WHERE b.city = 'Kathmandu' AND b.zip = '245';


SELECT * FROM Usr u
WHERE  
 u.DOB >= to_timestamp('01/JAN/1995 01:00:00', 'dd-mm-yyyy hh24:mi:ss');
 
 
 SELECT  
  Type,
    SUM(Cost) AS Total_Cost FROM Medicine 
    GROUP BY CUBE ( Type);


