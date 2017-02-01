DROP DATABASE Licensing;

CREATE DATABASE Licensing;

CREATE TABLE tbl_PBS (
  pbsId Integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  firstName varchar(25),
  lastName varchar(25),
  programId Integer,
  funderId Integer,
  age Integer,
  DOB date,
  DOA date,
  sex varChar(1),
  tierLevel Integer(1),
  notes varchar(500),
  rate numeric(6,2)
);

CREATE TABLE tbl_RestrictiveMeasures (
  restrictiveMeasuresId Integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  measureName varchar(50),
  doReapply boolean,
  description varchar(500)
);

CREATE TABLE tbl_X_Ref_PBS_RestrictiveMeasures (
  pbsId Integer,
  restrictiveMeasuresId Integer,
  approvalDate date,
  submissionDate date
);

CREATE TABLE tbl_RightsLimitations (
  limitationId Integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  rightsBeingLimited varchar(250),
  dateOriginallySent date,
  dateOriginallyApproved date,
  reviewSchedule varchar(10),
  lastInternalReview date,
  planToFade varchar(150),
  pbsId Integer
);

CREATE TABLE tbl_Licensers (
  licenserId Integer NOT NULL PRIMARY KEY,
  firstName varchar(25),
  lastName varchar(25),
  addressId Integer,
  phoneNumber varchar(15),
  emailAddress varchar(50)
);

CREATE TABLE tbl_Funders (
  funderId Integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  name varchar(25),
  phoneNumber varchar(25),
  addressId Integer
);

CREATE TABLE tbl_Programs (
  programId Integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  programName varchar(25),
  addressId Integer,
  phoneNumber varchar(15),
  programDirectorId Integer,
  licenserId Integer(5),
  lastVisit date,
  applicationSubmit date,
  citationId Integer
);

CREATE TABLE tbl_ProgramDirectors (
  programDirectorId Integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  firstName varchar(25),
  lastName varchar(25),
  addressId Integer,
  cellPhoneNumber varchar(15),
  officePhoneNumber varchar(25),
  emailAddress varchar(50),
  areaDirectorId Integer
);

CREATE TABLE tbl_AreaDirectors (
  areaDirectorId Integer PRIMARY KEY AUTOINCREMENT NOT NULL, 
  firstName varchar(25),
  lastName varchar(25),
  addressId Integer,
  cellPhoneNumber varchar(15),
  officePhoneNumber varchar(25),
  emailAddress varchar(50),
  regionalDirectorId Integer
);

CREATE TABLE tbl_RegionalDirectors (
  regionalDirectorId Integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  firstName varchar(25),
  lastName varchar(25),
  addressId Integer,
  cellPhoneNumber varchar(15),
  officePhoneNumber varchar(25),
  emailAddress varchar(50),
  region varchar(25)
);

CREATE TABLE tbl_QIS (
  qisId Integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  firstName varchar(25),
  lastName varchar(25),
  addressId Integer,
  cellPhoneNumber varchar(15),
  officePhoneNumber varchar(25),
  emailAddress varchar(50),
  regionalDirectorId Integer
);

CREATE TABLE tbl_Addresses (
  addressId Integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  streetNumber varchar(50),
  city varchar(50),
  zipCode Integer(5)
);

CREATE TABLE tbl_Citations (
  citationId Integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  citationName varchar(50),
  regulation varchar(25),
  citationDate date
);