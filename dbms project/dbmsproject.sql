CREATE DATABASE DBMSProject;
CREATE TABLE doctor
(
NAME VARCHAR (10),
Address VARCHAR(20),
Department VARCHAR(10),
DocID INT(10),
PhoneNo INT(12),
Gender VARCHAR(5),

 PRIMARY KEY (DocID)
);

CREATE TABLE Treats
(

DateofTreatment VARCHAR(10),
DocID INT(10),
PatientID INT(10),
FOREIGN KEY (DocID) REFERENCES doctor(DocID),
FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);

CREATE TABLE Patient
(

Address VARCHAR(20),
DOB VARCHAR(10),
PhoneNo INT (12),
NAME VARCHAR(10),
PatientID INT(10),
Gender VARCHAR(5),
DocID INT(10),
PRIMARY KEY (PatientID),
FOREIGN KEY (DocID) REFERENCES doctor(DocID)


);
CREATE TABLE Bill
(
BillNo INT (5),
DocCharges INT(10),
RoomCharges INT(10),
PatientID INT(10),
PRIMARY KEY (BillNo),
FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)



);

CREATE TABLE Room
(

TYPE VARCHAR(10),
RoomNo INT(5),
PatientID INT(10),
PRIMARY KEY (RoomNo),
FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)

);

INSERT INTO doctor(NAME,Address,Department,DocID,PhoneNo,Gender) VALUES('Ahmed','sector b house no 15 gulshan , karachi','Dental',1,333543217865,'Male'),('Fahad','sector c house no 5 gulshan , karachi','Orthopaedic',2,333543282865,'Male'),('Tahir','sector a house no 6 saddar , karachi','E.N.T',3,333521217865,'Male'),('Javed','sector d house no 15 gulshan , karachi','Dental',4,333833217865,'Male');

SELECT * FROM doctor;

INSERT INTO Patient(Address,DOB,PhoneNo,NAME,PatientID,Gender,DocID) VALUES ('sector d house no 1 fb area ,karachi','29/1/87',324676553432,'Ali',11,'Male',1),('sector a house no 1 fb area ,karachi','21/2/89',324864553432,'Rizwan',12,'Male',2),('sector d house no 1 Malir ,karachi','22/1/77',324216553432,'Ali',13,'Male',3),('sector d house no 3 fb area ,karachi','12/1/88',324762553432,'Shahid',14,'Male',4);

SELECT * FROM Patient;

INSERT INTO Bill(BillNo,DocCharges,RoomCharges,PatientID) VALUES (21,2500,1000,11),(22,2200,2000,12),(23,1500,2000,13),(24,3500,1000,14);

SELECT * FROM Bill;

INSERT INTO Room(TYPE,RoomNo,PatientID) VALUES ('General',31,11),('ICU',32,12),('Special',33,13),('VIP',34,14);

SELECT * FROM Room;

INSERT INTO Treats(DateofTreatment,DocID,PatientID) VALUES ('12-3-2018',1,11),('2-1-2019',2,12),('25-5-2017',3,13),('4-7-2017',4,14);

SELECT * FROM Treats;
