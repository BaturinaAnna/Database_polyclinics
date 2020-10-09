DROP VIEW IF EXISTS CuredMonth;
CREATE VIEW CuredMonth AS (
    SELECT SocialStat.SocialStat, 
    EXTRACT(MONTH FROM NOW()) AS CurrentMonth, DiagnosisID,
	COUNT(DISTINCT PatientID) AS PatientCnt
	FROM Treatment
    JOIN Patient ON Treatment.PatientID = Patient.insurance
    JOIN SocialStat ON Patient.SocialStatus = SocialStat.id
    WHERE EXTRACT(MONTH FROM Treatment.TreatmentStart) = EXTRACT(MONTH FROM NOW()) 
    AND EXTRACT(MONTH FROM Treatment.TreatmentFinish) = EXTRACT(MONTH FROM NOW())
    GROUP BY SocialStat, DiagnosisID
);
SELECT * FROM CuredMonth;