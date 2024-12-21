SELECT
    Search_query,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS Frequency_rank
FROM
    T_search_records
WHERE
    Date >= DATE((SELECT MAX(Date) FROM T_search_records), '-7 days')
GROUP BY
    Search_query
ORDER BY
    Frequency_rank
LIMIT 10;