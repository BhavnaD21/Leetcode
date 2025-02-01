/* Write your T-SQL query statement below */
select 
    query_name,
    round(sum(cast(rating as float)/position)/count(query_name),2) as quality,
    round(sum(cast(case when rating < 3 then 1 else 0 end as float))/count(result) *100,2) as poor_query_percentage 
from 
    Queries 
group by 
    query_name