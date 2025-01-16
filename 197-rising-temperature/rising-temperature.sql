/* Write your T-SQL query statement below */
select a.id from Weather a left join Weather b on a.recordDate = Dateadd(day,1,b.recordDate)where a.temperature > b.temperature 