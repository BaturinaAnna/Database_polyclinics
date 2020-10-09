CREATE DATABASE IF NOT EXISTS polyclinic;
USE polyclinic;

CREATE TABLE IF NOT EXISTS Specialization (
	id INTEGER NOT NULL PRIMARY KEY,
    SpecializationType VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS SocialStat (
	id INTEGER NOT NULL PRIMARY KEY,
    SocialStat VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS PatientCondition (
	id INTEGER NOT NULL PRIMARY KEY,
    ConditionType VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS Diagnosis (
	id INTEGER NOT NULL PRIMARY KEY,
    DiagnosisType VARCHAR(30)
);
CREATE TABLE IF NOT EXISTS Doctor (
	ID INTEGER NOT NULL PRIMARY KEY,
    LastName VARCHAR(30) NOT NULL,
    FirstName VARCHAR(30) NOT NULL,
    Patronymic VARCHAR(30),
    SpecializationID INTEGER,
    Experience INTEGER,
    FOREIGN KEY (SpecializationID) REFERENCES Specialization(id)
);

CREATE TABLE IF NOT EXISTS Patient (
	insurance BIGINT NOT NULL PRIMARY KEY,
    LastName VARCHAR(30) NOT NULL,
    FirstName VARCHAR(30) NOT NULL,
    Patronymic VARCHAR(30),
    BirthYear YEAR,
    SocialStatus INTEGER,
    FOREIGN KEY (SocialStatus) REFERENCES SocialStat(id)
);

CREATE TABLE IF NOT EXISTS Treatment (
	ID INTEGER NOT NULL PRIMARY KEY,
	DoctorID INTEGER,
    PatientID BIGINT,
    DiagnosisID INTEGER,
    ConditionID INTEGER,
    TreatmentStart DATE NOT NULL,
    TreatmentFinish DATE,
    FOREIGN KEY (DoctorID) REFERENCES Doctor(ID),
    FOREIGN KEY (PatientID) REFERENCES Patient(insurance),
    FOREIGN KEY (DiagnosisID) REFERENCES Diagnosis(id),
    FOREIGN KEY (ConditionID) REFERENCES PatientCondition(id)
);