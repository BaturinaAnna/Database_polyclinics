SELECT Doctor
FROM (
	SELECT concat( Doctor.LastName, ' ', Doctor.FirstName, ' ', Doctor.Patronymic) AS Doctor,
	PatientID, SocialStat.SocialStat, COUNT(socialstat.id) AS StatCnt
	FROM polyclinic.treatment
	JOIN Doctor On treatment.DoctorID = doctor.ID
	JOIN Patient ON treatment.PatientID = patient.insurance
	JOIN SocialStat ON patient.SocialStatus = SocialStat.id
	GROUP BY DoctorID
) AS T1
WHERE SocialStat = 'инвалид' AND StatCnt = 1;