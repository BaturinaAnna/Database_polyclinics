DROP VIEW IF EXISTS BirthYearStat;
CREATE VIEW BirthYearStat AS (
	SELECT BirthYear, MostFrequentDiagnosis, 
    COUNT(DISTINCT PatientID) AS PatientCnt
	FROM (
		SELECT BirthYear, DiagnosisType AS MostFrequentDiagnosis,
		PatientID, COUNT(PatientID) AS PatientDiagnCnt
		FROM Treatment
		JOIN Patient ON Treatment.PatientID = Patient.insurance
		JOIN Diagnosis ON Treatment.DiagnosisID = Diagnosis.ID
		GROUP BY BirthYear, DiagnosisType
		ORDER BY PatientDiagnCnt DESC
	) AS T2
	GROUP BY BirthYear
);
SELECT * FROM BirthYearStat;