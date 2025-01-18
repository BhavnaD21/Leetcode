/* Write your T-SQL query statement below */

select Prices.product_id,ROUND(COALESCE(SUM(CAST(Prices.price*UnitsSold.units AS FLOAT)),0)/COALESCE(SUM(UnitsSold.units),1),2)as average_price from Prices left join UnitsSold on Prices.product_id = UnitsSold.product_id AND UnitsSold.purchase_date BETWEEN Prices.start_date AND Prices.end_date group by Prices.product_id


