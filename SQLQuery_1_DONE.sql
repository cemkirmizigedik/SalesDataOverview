--Cleansed Data
SELECT sj.[Order ID]
	,sj.[Product]
	--,REPLACE(sj.Product,' ','_') as [Product Name]
	,sj.[Quantity Ordered]
	,sj.[Price Each]
	,(sj.[Quantity Ordered] * sj.[Price Each]) AS [Sales Amount]
	--,[Order Date]
	,LEFT(sj.[Order Date], CHARINDEX(' ', sj.[Order Date], 1)) AS [Order Date]
	,RIGHT(sj.[Order Date], CHARINDEX(' ', REVERSE(sj.[Order Date]))) AS [Order Hour]
	,sj.[Purchase Address]
FROM [SalesProductDataProject].[dbo].[Sales_January_2019] AS sj
LEFT JOIN [dbo].Sales_February_2019 AS sf ON sj.Product = sf.Product


 
 