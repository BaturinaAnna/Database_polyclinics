DROP VIEW IF EXISTS DoctorStat;
CREATE VIEW DoctorStat AS (
	SELECT SucTreat.DoctorID, SucTreat.Doctor, SuccessfullTreatment, TotalTreatment  
    FROM (
		SELECT DoctorID, 
		concat( Doctor.LastName, ' ', Doctor.FirstName, ' ', Doctor.Patronymic) AS Doctor,
		COUNT(PatientID) AS SuccessfullTreatment
		FROM Treatment
		JOIN Doctor ON Treatment.DoctorID = Doctor.ID
		JOIN Patient ON Treatment.PatientID = Patient.insurance
		WHERE EXTRACT(YEAR FROM TreatmentStart) = EXTRACT(YEAR FROM NOW())
		AND EXTRACT(YEAR FROM TreatmentFinish) = EXTRACT(YEAR FROM NOW())
		GROUP BY Treatment.DoctorID
	) AS SucTreat
    JOIN (
		SELECT DoctorID, 
		concat( Doctor.LastName, ' ', Doctor.FirstName, ' ', Doctor.Patronymic) AS Doctor,
		COUNT(PatientID) AS TotalTreatment
		FROM Treatment
		JOIN Doctor ON Treatment.DoctorID = Doctor.ID
		JOIN Patient ON Treatment.PatientID = Patient.insurance
		WHERE EXTRACT(YEAR FROM TreatmentStart) = EXTRACT(YEAR FROM NOW())
		GROUP BY Treatment.DoctorID
	) AS FullTreat
    ON FullTreat.DoctorID = SucTreat.DoctorID
);
SELECT * FROM DoctorStat;