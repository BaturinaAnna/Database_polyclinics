INSERT INTO Specialization (id, SpecializationType) VALUES (1, 'хирург');
INSERT INTO Specialization (id, SpecializationType) VALUES (2, 'терапевт');
INSERT INTO Specialization (id, SpecializationType) VALUES (3, 'офтальмолог');
INSERT INTO Specialization (id, SpecializationType) VALUES (4, 'невролог');
INSERT INTO Specialization (id, SpecializationType) VALUES (5, 'кардиолог');
INSERT INTO Specialization (id, SpecializationType) VALUES (6, 'ревматолог');
INSERT INTO Specialization (id, SpecializationType) VALUES (7, 'отоларинголог');
INSERT INTO Specialization (id, SpecializationType) VALUES (8, 'онколог');
INSERT INTO Specialization (id, SpecializationType) VALUES (9, 'стоматолог');
INSERT INTO Specialization (id, SpecializationType) VALUES (10, 'дерматолог');

INSERT INTO SocialStat (id, SocialStat) VALUES (1, 'учащийся');
INSERT INTO SocialStat (id, SocialStat) VALUES (2, 'работающий');
INSERT INTO SocialStat (id, SocialStat) VALUES (3, 'временно неработающий');
INSERT INTO SocialStat (id, SocialStat) VALUES (4, 'инвалид');
INSERT INTO SocialStat (id, SocialStat) VALUES (5, 'пенсионер');

INSERT INTO PatientCondition (id, ConditionType) VALUES (1, 'средней тяжести');
INSERT INTO PatientCondition (id, ConditionType) VALUES (2, 'тяжелое');
INSERT INTO PatientCondition (id, ConditionType) VALUES (3, 'направлен в стационар');
INSERT INTO PatientCondition (id, ConditionType) VALUES (4, 'умер');

INSERT INTO Diagnosis (id, DiagnosisType) VALUES (1, 'перелом ребра');
INSERT INTO Diagnosis (id, DiagnosisType) VALUES (2, 'грипп');
INSERT INTO Diagnosis (id, DiagnosisType) VALUES (3, 'астигматизм');
INSERT INTO Diagnosis (id, DiagnosisType) VALUES (4, 'инсульт');
INSERT INTO Diagnosis (id, DiagnosisType) VALUES (5, 'тахикардия');
INSERT INTO Diagnosis (id, DiagnosisType) VALUES (6, 'артирит');
INSERT INTO Diagnosis (id, DiagnosisType) VALUES (7, 'фарингит');
INSERT INTO Diagnosis (id, DiagnosisType) VALUES (8, 'рак кожи');
INSERT INTO Diagnosis (id, DiagnosisType) VALUES (9, 'кариес');
INSERT INTO Diagnosis (id, DiagnosisType) VALUES (10, 'псориаз');

INSERT INTO Doctor (ID, LastName, FirstName, Patronymic, SpecializationID, Experience)
VALUES (1, 'Иванов', 'Иван', 'Иванович', 1, 10);
INSERT INTO Doctor (ID, LastName, FirstName, Patronymic, SpecializationID, Experience)
VALUES (2, 'Петров', 'Петр', 'Петрович', 2, 0);
INSERT INTO Doctor (ID, LastName, FirstName, Patronymic, SpecializationID, Experience)
VALUES (3, 'Семёнов', 'Семён', 'Семёнович', 3, 2);
INSERT INTO Doctor (ID, LastName, FirstName, Patronymic, SpecializationID, Experience)
VALUES (4, 'Кириллов', 'Кирилл', 'Кириллович', 4, 23);
INSERT INTO Doctor (ID, LastName, FirstName, Patronymic, SpecializationID, Experience)
VALUES (5, 'Андреев', 'Андрей', 'Андреевич', 5, 17);
INSERT INTO Doctor (ID, LastName, FirstName, Patronymic, SpecializationID, Experience)
VALUES (6, 'Сергеев', 'Сергей', 'Сергеевич', 6, 6);
INSERT INTO Doctor (ID, LastName, FirstName, Patronymic, SpecializationID, Experience)
VALUES (7, 'Валерьев', 'Валерий', 'Валерьевич', 7, 5);
INSERT INTO Doctor (ID, LastName, FirstName, Patronymic, SpecializationID, Experience)
VALUES (8, 'Николаев', 'Николай', 'Николаевич', 8, 5);
INSERT INTO Doctor (ID, LastName, FirstName, Patronymic, SpecializationID, Experience)
VALUES (9, 'Михаилов', 'Михаил', 'Михайлович', 9, 11);
INSERT INTO Doctor (ID, LastName, FirstName, Patronymic, SpecializationID, Experience)
VALUES (10, 'Владимиров', 'Владимир', 'Владимирович', 10, 1);

INSERT INTO Patient (insurance, LastName, FirstName, Patronymic, BirthYear , SocialStatus)
VALUES (1000000000000000, 'Евгеньев', 'Евгений', 'Евгеньевич', '1998', 1);
INSERT INTO Patient (insurance, LastName, FirstName, Patronymic, BirthYear , SocialStatus)
VALUES (1000000803000021, 'Захаров', 'Захар', 'Захарович', '1999', 1);
INSERT INTO Patient (insurance, LastName, FirstName, Patronymic, BirthYear , SocialStatus)
VALUES (1000000345620000, 'Дмитриев', 'Дмитрий', 'Дмитриевич', '1990', 2);
INSERT INTO Patient (insurance, LastName, FirstName, Patronymic, BirthYear , SocialStatus)
VALUES (1000999001000000, 'Степанов', 'Степан', 'Степанович', '1972', 2);
INSERT INTO Patient (insurance, LastName, FirstName, Patronymic, BirthYear , SocialStatus)
VALUES (1000776177000000, 'Георгиев', 'Георгий', 'Георгиевич', '1965', 4);
INSERT INTO Patient (insurance, LastName, FirstName, Patronymic, BirthYear , SocialStatus)
VALUES (1744000000000000, ' Александров', 'Александр', 'Александрович', '1993', 3);
INSERT INTO Patient (insurance, LastName, FirstName, Patronymic, BirthYear , SocialStatus)
VALUES (1222200000000000, 'Константинов', 'Константин', 'Константинович', '1990', 4);
INSERT INTO Patient (insurance, LastName, FirstName, Patronymic, BirthYear , SocialStatus)
VALUES (1000000000000123, 'Павлов', 'Павел', 'Павлович', '1974', 4);
INSERT INTO Patient (insurance, LastName, FirstName, Patronymic, BirthYear , SocialStatus)
VALUES (1000092300000000, 'Васильев', 'Василий', 'Василевич', '1946', 5);
INSERT INTO Patient (insurance, LastName, FirstName, Patronymic, BirthYear , SocialStatus)
VALUES (1000000000354600, 'Владиславов', 'Владислав', 'Владиславович', '1950', 5);

INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart)
VALUES (1, 1, 1000000000000000, 1, 1, '2020-01-01');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (2, 2, 1000000803000021, 2, 1, '2020-02-21', '2020-04-08');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (3, 3, 1000000345620000, 3, 2, '2018-03-12', '2018-05-13');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (4, 4, 1000999001000000, 4, 2, '2019-12-26', '2019-12-27');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart)
VALUES (5, 5, 1000776177000000, 5, 3, '2015-02-22');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (6, 6, 1744000000000000, 6, 3, '2020-02-02', '2020-02-20');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (7, 7, 1222200000000000, 7, 4, '2020-05-06', '2020-05-09');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (8, 8, 1000000000000123, 8, 4, '2020-04-04', '2020-05-04');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (9, 9, 1000092300000000, 9, 4, '2019-04-04', '2020-04-05');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart)
VALUES (10, 10, 1000000000354600, 10, 3, '2014-11-18');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart)
VALUES (11, 9, 1000000000354600, 9, 3, '2020-05-12');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart)
VALUES (12, 8, 1000776177000000, 8, 2, '2020-05-05');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (13, 1, 1000776177000000, 1, 2, '2020-03-11', '2020-04-08');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (14, 2, 1000776177000000, 2, 3, '2019-02-21', '2019-02-22');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (15, 3, 1000776177000000, 3, 2, '2020-01-01', '2020-04-09');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (16, 4, 1000776177000000, 4, 2, '2020-05-12', '2020-05-13');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (17, 6, 1000776177000000, 6, 1, '2016-02-28', '2020-04-21');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (18, 7, 1000776177000000, 7, 1, '2010-12-12', '2020-12-31');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (19, 9, 1000776177000000, 9, 3, '2020-01-03', '2020-03-02');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (20, 10, 1000776177000000, 10, 1, '2017-06-02', '2017-06-12');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (21, 10, 1000776177000000, 10, 1, '2018-06-02', '2018-06-12');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (22, 4, 1222200000000000, 4, 1, '2020-05-07', '2018-05-08');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (23, 2, 1000000803000021, 2, 1, '2020-03-21', '2020-05-08');
INSERT INTO Treatment (ID, DoctorID, PatientID, DiagnosisID, ConditionID, TreatmentStart, TreatmentFinish)
VALUES (24, 3, 1000000803000021, 3, 1, '2020-03-21', '2020-05-08');