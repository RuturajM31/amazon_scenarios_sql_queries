WITH ctr_data AS (
    SELECT
        tsr.Page_type,
        tr.Age_group,
        COUNT(CASE WHEN tsr.Clicked = 'TRUE' THEN 1 END) AS Clicked_count,
        COUNT(*) AS Total_count,
        COUNT(CASE WHEN tsr.Clicked = 'TRUE' THEN 1 END) * 1.0 / COUNT(*) AS Click_through_rate
    FROM T_search_records tr
    INNER JOIN T_search_results tsr ON tr.Search_id = tsr.Search_id
    GROUP BY tsr.Page_type, tr.Age_group
)
SELECT
    Page_type,
    Age_group,
    Click_through_rate
FROM (
    SELECT
        Page_type,
        Age_group,
        Click_through_rate,
        RANK() OVER (PARTITION BY Page_type ORDER BY Click_through_rate DESC) AS rank
    FROM ctr_data
) ranked
WHERE rank = 1;