# Heart Disease Risk and Patient Health Analysis

## Executive Summary
This project evaluates **9,000 patient records** across 27 clinical and lifestyle variables to identify key cardiovascular risk patterns, evaluate health trends across demographic cohorts, and measure wellness technology adoption. 

The analytical pipeline uses **SQL Server / MySQL** for structured data extraction and transformation, and **Power BI Desktop** for dynamic visual reports.

---

## Interactive Power BI Dashboards

### 1. Patient Health Overview
### 2. Cardiovascular Health & Risk Insights
### 3. Patient Wellness & Heart Health Analytics

---

## Baseline Analytical Findings
* **Total Cohort Size:** 9,000 Patient Records
* **Average Systolic Blood Pressure:** 127.85 mmHg
* **Average Diastolic Blood Pressure:** 80.79 mmHg
* **Average Fasting Blood Sugar:** 119.47 mg/dL
* **Average Weekly Exercise Duration:** 139.49 Minutes
* **Wearable Technology Adoption Rate:** 55.55%

---

## Data Architecture & Code Implementation

### 1. Database Schema (`01_db_schema_setup.sql`)
Defines the `heart_disease_db` database container and initializes the core schema structure for all 27 clinical and lifestyle variables.

### 2. Analytical Queries (`02_analytical_queries.sql`)
Calculates baseline clinical averages, patient breakdowns across smoking cohorts, wearable adoption metrics, and chest pain classifications.

### 3. Power BI DAX Formulas
Calculated fields added in Power BI for patient segmentation:# Heart-disease-risk-patient-health-analysis
```dax
Age Group = 
SWITCH(
    TRUE(),
    'heart_disease_risk_2026'[age] < 30, "Young Adult",
    'heart_disease_risk_2026'[age] < 46, "Adult",
    'heart_disease_risk_2026'[age] < 61, "Middle Age",
    "Senior"
)

BMI Category = 
SWITCH(
    TRUE(),
    'heart_disease_risk_2026'[bmi] < 18.5, "Underweight",
    'heart_disease_risk_2026'[bmi] < 25.0, "Normal",
    'heart_disease_risk_2026'[bmi] < 30.0, "Overweight",
    "Obese"
)

Wearable Adoption % = 
DIVIDE(
    CALCULATE(COUNTROWS('heart_disease_risk_2026'), 'heart_disease_risk_2026'[wearable_owner] = 1),
    COUNTROWS('heart_disease_risk_2026'),
    0
)

Repository Structure
Plaintext
heart-disease-risk-analysis/
│
├── data/
│   └── heart_disease_risk_2026.csv              <-- Raw Dataset (9,000 records)
│
├── sql/
│   ├── 01_db_schema_setup.sql                    <-- Database Schema Setup Script
│   └── 02_analytical_queries.sql                 <-- Data Validation & Analysis Queries
│
├── power_bi/
│   └── Heart_Disease_Analysis.pbix               <-- Power BI Interactive Dashboard File
│
├── docs/
│   ├── pbi_dashboard.png                         <-- Dashboard Page 1 Preview
│   ├── cardiovascular_health_risk_insights.png   <-- Dashboard Page 2 Preview
│   └── patient_wellness_analytics.png            <-- Dashboard Page 3 Preview
│
└── README.md                                     <-- Executive Documentation
