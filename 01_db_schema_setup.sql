
-- Step 1: Create Database Container
CREATE DATABASE IF NOT EXISTS heart_disease_db;
USE heart_disease_db;

-- Step 2: Drop Table if re-running script
DROP TABLE IF EXISTS heart_disease_risk_2026;

-- Step 3: Create Table Schema for 27 Attributes
CREATE TABLE heart_disease_risk_2026 (
    patient_id INT PRIMARY KEY,
    age INT NOT NULL,
    sex VARCHAR(10) NOT NULL,
    resting_bp_systolic INT NOT NULL,
    resting_bp_diastolic INT NOT NULL,
    cholesterol_total INT NOT NULL,
    hdl INT NOT NULL,
    ldl INT NOT NULL,
    triglycerides INT NOT NULL,
    fasting_blood_sugar INT NOT NULL,
    hba1c DECIMAL(4,2) NOT NULL,
    bmi DECIMAL(4,2) NOT NULL,
    resting_heart_rate INT NOT NULL,
    max_heart_rate_achieved INT NOT NULL,
    chest_pain_type VARCHAR(50) NOT NULL,
    exercise_induced_angina INT NOT NULL,
    st_depression DECIMAL(3,2) NOT NULL,
    smoker_status VARCHAR(20) NOT NULL,
    alcohol_units_per_week INT NOT NULL,
    exercise_minutes_per_week INT NOT NULL,
    sleep_hours DECIMAL(3,1) NOT NULL,
    stress_score INT NOT NULL,
    daily_steps INT NOT NULL,
    diet_quality_score INT NOT NULL,
    wearable_owner INT NOT NULL,
    family_history INT NOT NULL,
    has_heart_disease INT NOT NULL
);

-- Step 4: Verify Structure
DESCRIBE heart_disease_risk_2026;