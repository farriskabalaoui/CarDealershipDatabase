drop database CarDealership;
create database CarDealership;

USE CarDealership;
 -- show tables;
 
CREATE TABLE CarSalesperson(
empId			int unsigned , 
firstName		varchar(30), 
lastName		varchar(30), 
street			varchar(30), 
city			varchar(30), 
state			varchar(15), 
zip				varchar(10), 
homeAreaCode	varchar(10),  
homePhoneNumber	varchar(15), 
officeAreaCode	varchar(15), 
officePhoneNumber varchar(15), 
cellAreaCode	varchar(15), 
cellPhoneNumber	varchar(15), 
dateHired		date,
PRIMARY KEY (empId)
); 

CREATE TABLE CarWarrantee(
warType			varchar(20), 
cost			int, 
period			varchar(20),
PRIMARY KEY (warType)
);

Create Table CarSale(
invoiceNo varchar(20), 
saleDate  varchar(20), 
salePrice mediumint, 
tax mediumint, 
registrationFee mediumint, 
tradeInAmount mediumint, 
financedAmount mediumint, 
amountPaid mediumint, 
amountDue mediumint, 
commission mediumint, 
saleMiles mediumint, 
custId int  , 
empId int unsigned, 
newCarVIN varchar(17), 
usedCarVIN varchar(20),
insPolNo varchar(30), 
insCoName varchar(25),  
finPolNo varchar(25),
finCoName varchar(25), 
tradeInVIN varchar(17), 
registrationNo varchar(20), 
warType varchar(20),
primary key(custId)
);  

CREATE Table NewCar(
	VIN varchar(17),
	make varchar(15),
    year int,
	model varchar(15),
	listPrice mediumint,
	dateManufactured date,
	placeManufactured date,
	cylinders tinyint,
	doors tinyint,
	weight smallint,
	capacity tinyint,
	color varchar(10),
	delDate date,
	delMiles mediumint,
    primary key (VIN)
); 

CREATE TABLE CarInsurance(
InsPolicyNo		varchar(30), 
companyName		varchar(30), 
street			varchar(30), 
city			varchar(30), 
state			varchar(15), 
zip				varchar(20), 
AreaCode		varchar(20),
PhoneNumber		varchar(10), 
startDate		date, 
endDate			date,
PRIMARY KEY (InsPolicyNo, companyName)
);  

CREATE TABLE CarRegistration(
registrationNo	varchar(30), 
plateNo			varchar(30), 
fee				float, 
PRIMARY KEY(registrationNo)
);

Create Table CarCustomer(
custId 		int,
firstName 	varchar(25),
lastName 	varchar(25),
street 		varchar(30),
city 		varchar(30),
state 		varchar(2),
zip 		varchar(5),
areaCode 	varchar(3),
phoneNumber varchar(7),
driversLicNo varchar(13),
referredBy 	varchar(50),
adSeen 		varchar(20),
PRIMARY KEY (custId)
); 

CREATE TABLE CarFinancing(
finPolicyNo		varchar(20), 
companyName		varchar(30), 
street			varchar(30), 
city			varchar(30), 
state			varchar(15), 
zip				varchar(10), 
AreaCode		varchar(10), 
PhoneNumber		varchar(15), 
startDate		date, 
amountFinanced	int, 
rate			int, 
numberMonths	varchar(10),
PRIMARY KEY(finPolicyNo, companyName)
); 

Create Table UsedCar(
VIN varchar(17), 
year int,
make varchar(20), 
model varchar(20), 
cylinders tinyint, 
doors tinyint, 
weight smallint, 
capacity varchar(10), 
color varchar(10), 
modelYear varchar(10), 
mileage mediumint, 
bookValue mediumint,
primary key (VIN)
);

INSERT INTO CarCustomer(firstName, lastName, phoneNumber, zip,  custId) 
VALUES ('Brandon', 'Webbsy', '7958834', '33333',6);
INSERT INTO CarCustomer(firstName, lastName, phoneNumber, zip, custId) 
VALUES ('Brose', 'Hong', '7958874', '23999',7);
INSERT INTO CarCustomer(firstName, lastName, phoneNumber, zip, custId) 
VALUES ('Angel', 'List', '7932244', '19999',8);
INSERT INTO CarSalesPerson(firstName, lastName, zip, empId) 
VALUES ('Robby', 'Dunkin', '33333',6);
INSERT INTO CarSalesPerson(firstName, lastName, zip, empId) 
VALUES ('John', 'Sylvan', '23999',7);
INSERT INTO CarSalesPerson(firstName, lastName, zip, empId) 
VALUES ('Henry', 'Seed', '19999',8);


INSERT INTO CarCustomer(firstName, lastName, phoneNumber, custId) 
VALUES ('Billy', 'Bob', '7958844',1);
INSERT INTO CarCustomer(firstName, lastName, phoneNumber, custId) 
VALUES ('Jennifer', 'Lopez', '4488344',2);
INSERT INTO CarCustomer(firstName, lastName, phoneNumber, custId) 
VALUES ('Johnny', 'Appleseed', '2091845',3);
INSERT INTO CarCustomer(firstName, lastName, phoneNumber, custId) 
VALUES ('Juan', 'Lilly', '7958844',4);
INSERT INTO CarCustomer(firstName, lastName, phoneNumber, custId) 
VALUES ('Brando', 'Webby', '7958844',5);

INSERT INTO NewCar(VIN, year, make, model) 
VALUES ('11192283', 2020, 'Toyota','Corolla');
INSERT INTO NewCar(VIN, year, make, model) 
VALUES ('14890589', 2019, 'Toyota','Prius');
INSERT INTO NewCar(VIN, year, make, model) 
VALUES ('33894849', 2020, 'Ford','F120');
INSERT INTO NewCar(VIN, year, make, model) 
VALUES ('33455563', 2020,'Ford', 'Mustang');
INSERT INTO NewCar(VIN, year, make, model) 
VALUES ('40939485', 2020, 'Nissan','Altima');


INSERT INTO CarRegistration(registrationNo, plateNo, fee) 
VALUES ('12984893', 'dn3in45', 100.4);
INSERT INTO CarRegistration(registrationNo, plateNo, fee) 
VALUES ('12938394', '3jbrj4', 100.4);
INSERT INTO CarRegistration(registrationNo, plateNo, fee) 
VALUES ('19283922', 'n3jndjn', 100.4);
INSERT INTO CarRegistration(registrationNo, plateNo, fee) 
VALUES ('12738475', '3jdbnjd', 100.4);
INSERT INTO CarRegistration(registrationNo, plateNo, fee) 
VALUES ('28938433', '2bndjb3', 100.4);

INSERT INTO CarInsurance(insPolicyNo, companyName) 
VALUES ('23498439', 'Geico');
INSERT INTO CarInsurance(insPolicyNo, companyName) 
VALUES ('23494894', 'Geico');
INSERT INTO CarInsurance(insPolicyNo, companyName) 
VALUES ('23448439', 'Allstate');
INSERT INTO CarInsurance(insPolicyNo, companyName) 
VALUES ('23434439', 'Allstate');
INSERT INTO CarInsurance(insPolicyNo, companyName) 
VALUES ('23445566', 'Wells Fargo');

INSERT INTO CarFinancing(finPolicyNo, companyName) 
VALUES ('283984', 'The Best Company');
INSERT INTO CarFinancing(finPolicyNo, companyName) 
VALUES ('283455', 'The Worst Company');
INSERT INTO CarFinancing(finPolicyNo, companyName) 
VALUES ('389489', 'An okay Company');
INSERT INTO CarFinancing(finPolicyNo, companyName) 
VALUES ('299999', 'The above average Company');
INSERT INTO CarFinancing(finPolicyNo, companyName) 
VALUES ('123845', 'The below average Company');

INSERT INTO CarWarrantee(warType, cost) 
VALUES ('The best warrantee', 20000);
INSERT INTO CarWarrantee(warType, cost) 
VALUES ('10 years', 5000);
INSERT INTO CarWarrantee(warType, cost) 
VALUES ('15 years', 7000);
INSERT INTO CarWarrantee(warType, cost) 
VALUES ('20 years', 10000);
INSERT INTO CarWarrantee(warType, cost) 
VALUES ('The worst warrantee', 20);

INSERT INTO UsedCar(VIN, year, make, model) 
VALUES ('2893839', 1990, 'Toyota','Corolla');
INSERT INTO UsedCar(VIN, year, make, model) 
VALUES ('2893444', 1993, 'Toyota','Corolla');
INSERT INTO UsedCar(VIN, year, make, model) 
VALUES ('2448494', 1999, 'Nissan','Altima');
INSERT INTO UsedCar(VIN, year, make, model) 
VALUES ('4874844', 1990,'Ford', 'Mustang');
INSERT INTO UsedCar(VIN, year, make, model) 
VALUES ('3839383', 1995, 'Ford', 'F120');
/*
INSERT INTO CarSale(invoiceNo, saleDate, salePrice, custId) 
VALUES ('3983938', 5/12/2011, 10000, 1);
INSERT INTO CarSale(invoiceNo, saleDate, salePrice, custId) 
VALUES ('3983944', 10/3/2011, 20000, 2);
INSERT INTO CarSale(invoiceNo, saleDate, salePrice, custId) 
VALUES ('3333898', 1/4/2011, 12000, 3);
INSERT INTO CarSale(invoiceNo, saleDate, salePrice, custId) 
VALUES ('3983338', 10/9/2011, 38383, 4);
INSERT INTO CarSale(invoiceNo, saleDate, salePrice, custId) 
VALUES ('3982222', 1/23/2011, 3090, 5);
*/

INSERT INTO UsedCar(VIN, year, make, model) 
VALUES ('44444444', 1999,'Nissan', 'Altima');
INSERT INTO NewCar(VIN, year,make, model) 
VALUES ('44444444', 2020, 'Nissan','Altima');
INSERT INTO UsedCar(VIN, year, make,model) 
VALUES ('44444488', 2011, 'Toyota', 'Corolla');
INSERT INTO NewCar(VIN, year, make, model) 
VALUES ('44444488', 2021, 'Toyota','Corolla');



INSERT INTO CarSale(invoiceNo, saleDate, salePrice, custId, empId) 
VALUES ('3983938', 5/12/2011, 10000, 1, 1);
INSERT INTO CarSale(invoiceNo, saleDate, salePrice, custId, empId) 
VALUES ('3983944', 10/3/2011, 20000, 2, 2);
INSERT INTO CarSale(invoiceNo, saleDate, salePrice, custId, empId) 
VALUES ('3333898', 1/4/2011, 12000, 3, 3);
INSERT INTO CarSale(invoiceNo, saleDate, salePrice, custId, empId) 
VALUES ('3983338', 10/9/2011, 38383, 4, 4);
INSERT INTO CarSale(invoiceNo, saleDate, salePrice, custId, empId) 
VALUES ('3982222', 1/23/2011, 3090, 5, 5);

INSERT INTO CarSalesPerson(empId, firstName, lastName) 
VALUES (1, 'Daniel', 'Danielson');
INSERT INTO CarSalesPerson(empId, firstName, lastName) 
VALUES (2, 'Mary', 'Williams');
INSERT INTO CarSalesPerson(empId, firstName, lastName) 
VALUES (3, 'Nikkil', 'Lopez');
INSERT INTO CarSalesPerson(empId, firstName, lastName) 
VALUES (4, 'Ron', 'Weasley');
INSERT INTO CarSalesPerson(empId, firstName, lastName) 
VALUES (5, 'Ducky', 'Wonders');

INSERT INTO UsedCar(VIN, year, make, model) 
VALUES ('19191955', '1997', 'Ford', 'Mustang');

INSERT INTO NewCar(VIN, year, make, model) 
VALUES ('19191930', '2022', 'Ford', 'Mustang');

INSERT INTO NewCar(VIN, year, make, model) 
VALUES ('19191920', '2021', 'Ford', 'Bronco');

INSERT INTO UsedCar(VIN, year, make, model) 
VALUES ('19193333', '2000', 'Ford', 'Bronco');



