create database mock_database;
\c mock_database
create table SessionKeys (
	SessionKeyID int, 
	UserID int, 
	CreatedTime Time,
	LastUsedTime Time
);

insert into SessionKeys values
	(0, 00001, '6:00AM', '6:30AM'),
	(1, 00002, '7:00AM', '7:30AM'),
	(2, 00003, '8:00AM', '8:30AM'),
	(3, 00004, '9:00AM', '9:30AM'),
	(4, 00005, '10:00AM', '10:30AM'),
	(5, 00006, '11:00AM', '11:30AM'),
	(6, 00007, '12:00PM', '12:30PM');


create table tfiSurvey ( 
	tfiSurveyID int, 
	PatientID int, 
	CompletionDate Date,
	CompletionTime Time,
	Question int 
);
insert into tfiSurvey values
	(0, 00001, 'June 1, 2019', '6:30AM', 0),
	(1, 00002, 'June 2, 2019', '7:30AM', 1),
	(2, 00003, 'June 3, 2019', '8:30AM', 0),
	(3, 00004, 'June 4, 2019', '9:30AM', 1),
	(4, 00005, 'June 5, 2019', '10:30AM', 0),
	(5, 00006, 'June 6, 2019', '11:30AM', 1),
	(6, 00007, 'June 7, 2019', '12:30PM', 0);


create table thsSurvey ( 
	thsSurveyID int, 
	PatientID int, 
	CompletionDate Date,
	CompletionTime Time,
	Question int 
);
insert into thsSurvey values
	(0, 00001, 'June 1, 2019', '6:30AM', 0),
	(1, 00002, 'June 2, 2019', '7:30AM', 1),
	(2, 00003, 'June 3, 2019', '8:30AM', 0),
	(3, 00004, 'June 4, 2019', '9:30AM', 1),
	(4, 00005, 'June 5, 2019', '10:30AM', 0),
	(5, 00006, 'June 6, 2019', '11:30AM', 1),
	(6, 00007, 'June 7, 2019', '12:30PM', 0);


create table tsSurvey ( 
	tsSurveyID int, 
	PatientID int, 
	CompletionDate Date,
	CompletionTime Time,
	Question int 
);
insert into tsSurvey values
	(0, 00001, 'June 1, 2019', '6:30AM', 0),
	(1, 00002, 'June 2, 2019', '7:30AM', 1),
	(2, 00003, 'June 3, 2019', '8:30AM', 0),
	(3, 00004, 'June 4, 2019', '9:30AM', 1),
	(4, 00005, 'June 5, 2019', '10:30AM', 0),
	(5, 00006, 'June 6, 2019', '11:30AM', 1),
	(6, 00007, 'June 7, 2019', '12:30PM', 0);


create table Patient (
	PatientID int,
	FirstName text,
	LastName text
);
insert into Patient values
	(00001, 'Bob', 'Anderson'),
	(00002, 'Billy', 'Alexander'),
	(00003, 'Bobby', 'Powers'),
	(00004, 'Ben', 'Franklin'),
	(00005, 'Braum', 'Mcdonald'),
	(00006, 'Becky', 'Johnson'),
	(00007, 'Bar', 'Movshovich');


create table Appointments (
	AppointmentID int, 
	PatientID int, 
	tfiSurveyID int, 
	thsSurveyID int, 
	tsSurveyID int, 
	AppointmentDate Date, 
	AppointmentTime Time,
	AuthorityID int, 
	NotesId int
);
insert into Appointments values
	(0, 2, 2, 2, 00001, 'June 1, 2019', '6:30AM', 0, 1),
	(1, 3, 3, 3, 00002, 'June 2, 2019', '7:30AM', 1, 2),
	(2, 1, 1, 1, 00003, 'June 3, 2019', '8:30AM', 0, 3),
	(3, 0, 0, 0, 00004, 'June 4, 2019', '9:30AM', 1, 4),
	(4, 4, 4, 4, 00005, 'June 5, 2019', '10:30AM', 0, 5),
	(5, 6, 6, 6, 00006, 'June 6, 2019', '11:30AM', 1, 6),
	(6, 5, 5, 5, 00007, 'June 7, 2019', '12:30PM', 0, 7);


create table Authority ( 
	AuthorityId int, 
	UserName text,
	Password text,
	Email text, 
	Type text
);
insert into Authority values
	(0, 'John', '000001', 'email@pdx.edu', 'Statatician'),
	(1, 'James', '000002', 'fake_email@pdx.edu', 'Admin'),
	(2, 'Jill', '000003', 'totaly_real@pdx.edu', 'Audiologist');


create table Notes (
	AuthorityID int, 
	Notes text
); 

insert into Notes values
	(0, 'Good'),
	(1, 'Bad'), 
	(2, 'Cant Hear'),
	(0, 'Nothing wrong'),
	(1, 'Deaf'),
	(2, 'Maybe Deaf'),
	(0, 'Definitely Deaf');






