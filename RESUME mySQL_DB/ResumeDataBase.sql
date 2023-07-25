CREATE DATABASE KwResumeDB;

CREATE TABLE CV_PersonInf(
    PersonID int PRIMARY KEY, 
    FirstName varchar(255),
    LastName varchar(255),
    Alias varchar(255),
    Email varchar(30),
    PhoneNumber varchar(12),
    GitAddress varchar(255),
    LinkedinAddress varchar(255)
);

CREATE TABLE CV_PersonAddress(
    PersonID int PRIMARY KEY,
    Country varchar(100),
    CountryCode varchar(30),
    City varchar(100),
    PostCode varchar(30),
    Address varchar(100),
    FOREIGN KEY (PersonID) REFERENCES CV_PersonInf(PersonID)
);

CREATE TABLE CV_SkillsData(
    PersonID int PRIMARY KEY,
    SoftSkills varchar(100),
    TechSkills varchar(100),
    NativeLanguage varchar(30),
    ForeignLanguage1 varchar(100),
    ForeignLanguage2 varchar(100),
    ForeignLanguage3 varchar(100),
    FOREIGN KEY (PersonID) REFERENCES CV_PersonInf(PersonID)
);

