SELECT * FROM social_media.`time wasters on social media`;
 
-- 1. Total Time Spent on Each Platform
SELECT Platform, SUM(`Total Time Spent`) AS TotalTimeSpent
FROM `social_media`.`time wasters on social media`
GROUP BY Platform
ORDER BY TotalTimeSpent DESC;

-- 2. Average Income of Users by Location
SELECT Location, AVG(Income) AS AverageIncome
FROM `social_media`.`time wasters on social media`
GROUP BY Location
ORDER BY AverageIncome DESC;

-- 3. Gender Distribution of Users
SELECT Gender, COUNT(*) AS UserCount
FROM `social_media`.`time wasters on social media`
GROUP BY Gender;

-- 4. Top 5 Most Popular Video Categories
SELECT `Video Category`, COUNT(*) AS CategoryCount
FROM `social_media`.`time wasters on social media`
GROUP BY `Video Category`
ORDER BY CategoryCount DESC
LIMIT 5;

-- 5. Total Number of Sessions by Demographics (Urban/Rural)
SELECT Demographics, SUM(`Number of Sessions`) AS TotalSessions
FROM `social_media`.`time wasters on social media`
GROUP BY Demographics;

-- 6. Average Video Length by Platform
SELECT Platform, AVG(`Video Length`) AS AverageVideoLength
FROM `social_media`.`time wasters on social media`
GROUP BY Platform;

-- 7.Users with High Engagement Scores (Above 8000)
SELECT *
FROM `social_media`.`time wasters on social media`
WHERE Engagement > 8000;

-- 8. Distribution of Users by Age Group
SELECT 
    CASE 
        WHEN Age < 20 THEN 'Under 20'
        WHEN Age BETWEEN 20 AND 29 THEN '20-29'
        WHEN Age BETWEEN 30 AND 39 THEN '30-39'
        WHEN Age BETWEEN 40 AND 49 THEN '40-49'
        WHEN Age BETWEEN 50 AND 59 THEN '50-59'
        ELSE '60 and above'
    END AS AgeGroup,
    COUNT(*) AS UserCount
FROM `social_media`.`time wasters on social media`
GROUP BY AgeGroup;

-- 9. Average Time Spent on Videos by Video Category
SELECT `Video Category`, AVG(`Time Spent On Video`) AS AverageTimeSpent
FROM `social_media`.`time wasters on social media`
GROUP BY `Video Category`;

-- 10. Users with Debt and Their Average Importance Score
SELECT Debt, AVG(`Importance Score`) AS AverageImportanceScore
FROM `social_media`.`time wasters on social media`
GROUP BY Debt;

-- 11. Most Common Reasons for Watching Videos
SELECT `Watch Reason`, COUNT(*) AS ReasonCount
FROM `social_media`.`time wasters on social media`
GROUP BY `Watch Reason`
ORDER BY ReasonCount DESC;

-- 12. Productivity Loss by Frequency of Use
SELECT Frequency, AVG(ProductivityLoss) AS AverageProductivityLoss
FROM `social_media`.`time wasters on social media`
GROUP BY Frequency
ORDER BY AverageProductivityLoss DESC;

-- 13. Top 5 Users Who Spent the Most Time Watching Videos
SELECT UserID, `Total Time Spent`
FROM `social_media`.`time wasters on social media`
ORDER BY `Total Time Spent` DESC
LIMIT 5;

-- 14. Correlation Between Income and Time Spent on Videos
SELECT Income, `Total Time Spent`
FROM `social_media`.`time wasters on social media`
ORDER BY Income;

-- 15. Users Who Watch Videos Mostly for Procrastination
SELECT *
FROM `social_media`.`time wasters on social media`
WHERE `Watch Reason` = 'Procrastination';






