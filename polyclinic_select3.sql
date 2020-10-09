SELECT CntWIthDeath/Cnt AS Percent
FROM (
	( 
		SELECT COUNT(Treatment.ID) AS CntWIthDeath
		FROM Treatment
		JOIN Diagnosis ON Treatment.DiagnosisID = Diagnosis.id
		JOIN PatientCondition ON Treatment.ConditionID = PatientCondition.id
		WHERE Diagnosis.DiagnosisType = 'кариес' 
        AND PatientCondition.ConditionType = 'умер'
	) AS T1
	JOIN (
		SELECT COUNT(Treatment.ID) AS Cnt
		FROM Treatment
		JOIN Diagnosis ON Treatment.DiagnosisID = Diagnosis.id
		JOIN PatientCondition ON Treatment.ConditionID = PatientCondition.id
		WHERE Diagnosis.DiagnosisType = 'кариес'
	) AS T2
);