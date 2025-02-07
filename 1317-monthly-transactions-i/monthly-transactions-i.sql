/* Write your T-SQL query statement below */
select 
    format(trans_date,'yyyy-MM') as month,
    country,
    count(trans_date) as trans_count,
    sum(case when state = 'approved' then 1 else 0 end) as approved_count,
    sum(amount) as trans_total_amount,
    sum(case when state = 'approved' then amount else 0 end) as approved_total_amount
from 
    Transactions
group by 
    country,
    format(trans_date,'yyyy-MM')