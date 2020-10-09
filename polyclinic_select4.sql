SELECT Patient
FROM (
	SELECT concat( Patient.LastName, ' ', Patient.FirstName, ' ', Patient.Patronymic)
    AS Patient,
	COUNT(DISTINCT Doctor.SpecializationID) AS SpecCnt
	FROM polyclinic.treatment
	JOIN Doctor On treatment.DoctorID = doctor.ID
	JOIN Patient ON treatment.PatientID = patient.insurance
	JOIN Specialization ON Doctor.SpecializationID = Specialization.id
	GROUP BY PatientID
) AS T1
WHERE SpecCnt = (
	SELECT COUNT(id) 
    FROM Specialization
);