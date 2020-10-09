DROP VIEW IF EXISTS Cured;
CREATE VIEW Cured AS (
	SELECT concat(Doctor.LastName, ' ', Doctor.FirstName, ' ', Doctor.Patronymic) AS Doctor,
    concat(Patient.LastName, ' ', Patient.FirstName, ' ', Patient.Patronymic) AS Patient,
    DATEDIFF(Treatment.TreatmentFinish, Treatment.TreatmentStart) AS TreatmetTime
    FROM Treatment
    JOIN Doctor ON Treatment.DoctorID = Doctor.ID
    JOIN Patient ON Treatment.PatientID = Patient.insurance
    WHERE Treatment.TreatmentFinish
);
SELECT * FROM Cured;