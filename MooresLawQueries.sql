--Query 1: Average Transistors per Microprocessor Over Years

SELECT CAST(Year AS int) AS Year, AVG([T_p_m]) AS Avg_Transistors
FROM [Transistors$]
GROUP BY CAST(Year AS int)

--Tableau Fields:

--Year (Dimension)
--Avg_Transistors (Measure)
--Suggested Visualization: Line chart showing the trend of average transistors per microprocessor over the years.


--Query 2: Transistors per Microprocessor by Entity

SELECT Entity, SUM(T_p_m) AS Total_Transistors
FROM [Transistors$]
GROUP BY Entity

--Tableau Fields:

--Entity (Dimension)
--Total_Transistors (Measure)
--Suggested Visualization: Horizontal bar chart displaying the total transistors per microprocessor for each entity.

--Query 3: Comparison of Transistors per Microprocessor Between Entities in a Specific Year

SELECT Entity, T_p_m AS Transistors, CAST(Year AS int) AS Year
FROM Transistors$
WHERE CAST(Year AS int) = 2022



--Tableau Fields:

--Entity (Dimension)
--Transistors (Measure)
--Year (Dimension)
--Suggested Visualization: Side-by-side bar chart or a grouped bar chart to compare the transistors per microprocessor for different entities in the specific year.


--Query 4: Highest Transistors per Microprocessor by Entity

SELECT Entity, MAX(T_p_m) AS Max_Transistors
FROM Transistors$
GROUP BY Entity

--Tableau Fields:

--Entity (Dimension)
--Max_Transistors (Measure)
--Suggested Visualization: A table showing entities and their highest recorded transistors per microprocessor.

--Query 5: Summary of Transistors per Microprocessor

SELECT COUNT(Code) AS Total_Processors, SUM(T_p_m) AS Total_Transistors
FROM Transistors$

--Tableau Fields:

--Total_Processors (Measure)
--Total_Transistors (Measure)
--Suggested Visualization: A summary card or small multiple bar chart showing the total number of processors and total transistors.

--These queries are adjusted to use the provided fields (Entity, Code, Year, and T_p_m) in the table named 'Transistors$'. Modify the queries according to your actual database structure and requirements.

