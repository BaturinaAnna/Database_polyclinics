SELECT Treatment.ID, TreatmentStart, TreatmentFinish,
concat( Doctor.LastName, ' ', Doctor.FirstName, ' ', Doctor.Patronymic) AS Doctor,
concat( Patient.LastName, ' ', Patient.FirstName, ' ', Patient.Patronymic) AS Patient,
DiagnosisType, 
ConditionType 
FROM polyclinic.Treatment
JOIN Doctor ON Doctor.ID = DoctorID
JOIN Patient ON Patient.insurance = PatientID
JOIN Diagnosis ON Diagnosis.ID = DiagnosisID
JOIN PatientCondition ON PatientCondition.id = ConditionID
WHERE DATE_ADD(Treatment.TreatmentStart, INTERVAL 1 MONTH) > Treatment.TreatmentFinish;