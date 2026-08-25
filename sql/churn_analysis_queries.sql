SELECT * FROM telecom_churn.telco_churn_cleaned;

use telecom_churn;

SELECT 
    Churn,
    COUNT(*) AS customer_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_churn_cleaned), 1) AS percentage
FROM telco_churn_cleaned
GROUP BY Churn;


SELECT 
    Churn,
    COUNT(*) AS customer_count
FROM telco_churn_cleaned
GROUP BY Churn;

SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM telco_churn_cleaned
GROUP BY Contract;

SELECT 
    TenureGroup,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM telco_churn_cleaned
GROUP BY TenureGroup;


SELECT 
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM telco_churn_cleaned
GROUP BY PaymentMethod;


SELECT 
    TechSupport,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM telco_churn_cleaned
GROUP BY TechSupport;

SELECT 
    OnlineSecurity,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM telco_churn_cleaned
GROUP BY OnlineSecurity;


SELECT 
    InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM telco_churn_cleaned
GROUP BY InternetService;


SELECT 
    Churn,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges
FROM telco_churn_cleaned
GROUP BY Churn;

SELECT 
    ROUND(SUM(MonthlyCharges), 2) AS monthly_revenue_at_risk
FROM telco_churn_cleaned
WHERE Churn = 'Yes';




