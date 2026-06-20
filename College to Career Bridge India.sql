create database `college to career bridge`;

use `college to career bridge`;

select count(*) from data;

select * from data 
limit 10;

select count(*) as `total student`
from data ;

SELECT
    `Placement Status`,
    COUNT(*) AS students
FROM data
GROUP BY `Placement Status`;

SELECT
    Internships,
    `Placement Status`,
    COUNT(*) AS students
FROM data
GROUP BY Internships, `Placement Status`
ORDER BY Internships;

select `placement status`, round(avg(CGPA),2) as `avg cgpa`
from data 
group by `placement status`;

select `placement status`, round(avg(`Coding Skills`),2) as `avg Coding Skills`
from data 
group by `placement status`;

DESCRIBE data;

SELECT
    Branch,
    COUNT(*) AS Total_Students,
    SUM(CASE WHEN `Placement Status`='Placed' THEN 1 ELSE 0 END) AS Placed_Students,
    ROUND(
        SUM(CASE WHEN `Placement Status`='Placed' THEN 1 ELSE 0 END)*100.0
        /COUNT(*),
        2
    ) AS Placement_Rate
FROM data
GROUP BY Branch
ORDER BY Placement_Rate DESC;

SELECT
    Certifications,
    COUNT(*) AS Students,
    SUM(CASE WHEN `Placement Status`='Placed' THEN 1 ELSE 0 END) AS Placed
FROM data
GROUP BY Certifications
ORDER BY Certifications;

SELECT
    Projects,
    COUNT(*) AS Students,
    SUM(CASE WHEN `Placement Status`='Placed' THEN 1 ELSE 0 END) AS Placed
FROM data
GROUP BY Projects
ORDER BY Projects;

SELECT
    Backlogs,
    COUNT(*) AS Students,
    SUM(CASE WHEN `Placement Status`='Placed' THEN 1 ELSE 0 END) AS Placed
FROM data
GROUP BY Backlogs
ORDER BY Backlogs;

SELECT
    `Student ID`,
    CGPA,
    `Coding Skills`,
    Internships,
    Projects,
    Certifications
FROM data
ORDER BY
    CGPA DESC,
    `Coding Skills` DESC
LIMIT 10;

SELECT
    ROUND(AVG(CGPA),2) AS Avg_CGPA,
    ROUND(AVG(`Coding Skills`),2) AS Avg_Coding,
    ROUND(AVG(`Communication Skills`),2) AS Avg_Communication,
    ROUND(AVG(`Aptitude Test Score`),2) AS Avg_Aptitude
FROM data
WHERE `Placement Status`='Placed';

select * from data ;