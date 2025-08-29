
-- 1. Basic Overview of the Dataset

-- Count total number of sessions
SELECT COUNT(*) AS TotalSessions
FROM sessions;

-- Check distinct visitor types
SELECT DISTINCT VisitorType
FROM sessions;

-- 2. Customer Behavior Insights

-- Total sessions grouped by VisitorType
SELECT VisitorType, COUNT(*) AS TotalSessions
FROM sessions
GROUP BY VisitorType
ORDER BY TotalSessions DESC;

-- Average PageValues for buyers vs non-buyers
SELECT Revenue, ROUND(AVG(PageValues), 2) AS AvgPageValue
FROM sessions
GROUP BY Revenue;

-- BounceRates difference between Weekend and Weekday traffic
SELECT Weekend, ROUND(AVG(BounceRates), 3) AS AvgBounceRate
FROM sessions
GROUP BY Weekend;

-- 3. Time-Based Insights

-- Most common month for purchases
SELECT Month, COUNT(*) AS PurchaseCount
FROM sessions
WHERE Revenue = 1
GROUP BY Month
ORDER BY PurchaseCount DESC;

-- Average Administrative duration by month
SELECT Month, ROUND(AVG(Administrative_Duration), 2) AS AvgAdminDuration
FROM sessions
GROUP BY Month
ORDER BY AvgAdminDuration DESC;

-- 4. Predictive Feature Exploration

-- Compare ExitRates for buyers vs non-buyers
SELECT Revenue, ROUND(AVG(ExitRates), 3) AS AvgExitRate
FROM sessions
GROUP BY Revenue;

-- Which VisitorType has the highest conversion rate
SELECT VisitorType,
       ROUND(SUM(CASE WHEN Revenue = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS ConversionRate
FROM sessions
GROUP BY VisitorType
ORDER BY ConversionRate DESC;

-- 5. Advanced Insights

-- Correlation proxy: Do higher PageValues sessions lead to purchases?
SELECT CASE 
           WHEN PageValues = 0 THEN 'No PageValue'
           WHEN PageValues BETWEEN 0 AND 100 THEN 'Low (0-100)'
           WHEN PageValues BETWEEN 101 AND 500 THEN 'Medium (101-500)'
           ELSE 'High (500+)'
       END AS PageValueRange,
       COUNT(*) AS SessionCount,
       SUM(CASE WHEN Revenue = 1 THEN 1 ELSE 0 END) AS Purchases
FROM sessions
GROUP BY PageValueRange
ORDER BY Purchases DESC;

-- Top 5 months with highest conversion rates
SELECT Month,
       ROUND(SUM(CASE WHEN Revenue = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS ConversionRate
FROM sessions
GROUP BY Month
ORDER BY ConversionRate DESC
LIMIT 5;
