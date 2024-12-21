SELECT
    tr.Age_group,
    SUM(tsr.Transaction_amount) AS Total_amount
FROM T_search_records tr
INNER JOIN T_search_results tsr ON tr.Search_id = tsr.Search_id
WHERE tsr.Clicked = 'TRUE'
GROUP BY tr.Age_group;