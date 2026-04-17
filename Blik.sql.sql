CREATE DATABASE blinkit
    DEFAULT CHARACTER SET = 'utf8mb4';
    -- Total KPIs
SELECT 
    SUM(Sales) AS Total_Sales,
    AVG(Sales) AS Avg_Sales,
    COUNT(*) AS No_of_Items,
    AVG(Rating) AS Avg_Rating
FROM blinkit_data;

-- Fat Content
SELECT Fat_Content, SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY Fat_Content;

-- Item Type
SELECT Item_Type, SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY Item_Type
ORDER BY Total_Sales DESC;

-- Outlet Size
SELECT Outlet_Size, SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Size;

-- Outlet Location
SELECT Outlet_Location_Type, SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Location_Type;

-- Establishment Year Trend
SELECT Outlet_Establishment_Year, SUM(Sales) AS Total_Sales
FROM blinkit_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year;