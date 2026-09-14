
USE heart_disease_db;

-- Query 1: Validate Ingested Record Count (Expected Output: 9000)
SELECT 
    COUNT(*) AS total_patients 
FROM heart_disease_risk_2026;

-- Query 2: Core Baseline Clinical Averages
SELECT 
    ROUND(AVG(resting_bp_systolic), 2) AS avg_systolic_bp_mmHg,
    ROUND(AVG(resting_bp_diastolic), 2) AS avg_diastolic_bp_mmHg,
    ROUND(AVG(fasting_blood_sugar), 2) AS avg_fasting_glucose_mg_dL,
    ROUND(AVG(exercise_minutes_per_week), 2) AS avg_weekly_exercise_mins
FROM heart_disease_risk_2026;

-- Query 3: Patient Breakdown by Smoking Status Cohort
SELECT 
    smoker_status,
    COUNT(*) AS patient_count,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM heart_disease_risk_2026)), 2) AS percentage
FROM heart_disease_risk_2026
GROUP BY smoker_status
ORDER BY patient_count DESC;

-- Query 4: Wearable Technology Adoption Metrics
SELECT 
    CASE 
        WHEN wearable_owner = 1 THEN 'Wearable Owner'
        ELSE 'Non-Owner'
    END AS adoption_status,
    COUNT(*) AS patient_count,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM heart_disease_risk_2026)), 2) AS percentage
FROM heart_disease_risk_2026
GROUP BY wearable_owner;

-- Query 5: Family History Risk Distribution
SELECT 
    CASE 
        WHEN family_history = 1 THEN 'Has Family History'
        ELSE 'No Family History'
    END AS family_history_status,
    COUNT(*) AS patient_count,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM heart_disease_risk_2026)), 2) AS percentage
FROM heart_disease_risk_2026
GROUP BY family_history;

-- Query 6: Chest Pain Classification Across Smoking Cohorts
SELECT 
    smoker_status,
    chest_pain_type,
    COUNT(*) AS patient_count
FROM heart_disease_risk_2026
GROUP BY smoker_status, chest_pain_type
ORDER BY smoker_status, patient_count DESC;