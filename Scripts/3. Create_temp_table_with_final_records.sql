
DROP TABLE IF EXISTS Employee_Attunity_CT_Temp;


SELECT t.*,
       CASE 
            WHEN Is_Deleted = 1 THEN 'N'
            WHEN Is_Deleted = 0 AND t.header_timestamp = t1.min_header_timestamp THEN 'N'
       END AS current_flg
INTO   Employee_Attunity_CT_Temp
FROM   Employee_Attunity_CT t
       INNER JOIN (
                SELECT MIN(header_timestamp) AS min_header_timestamp,                       
                       MAX(CASE WHEN header_change_oper = 'D' THEN 1 ELSE 0 END) AS Is_Deleted,
                       first_name,
                       last_name
                FROM   Employee_Attunity_CT t
                GROUP BY
                       first_name,
                       last_name
            ) t1
            ON  t.first_name = t1.first_name
            AND t.last_name = t1.last_name
            AND (t.header_timestamp = t1.min_header_timestamp)
            AND t.header_change_oper IN ('I', 'B')
            AND t.header_change_seq > 201703010650085 -- Value will be picked up from Configuration Table
                
UNION ALL

SELECT t.*,
       CASE 
            WHEN Is_Deleted = 1 THEN 'N'
            WHEN Is_Deleted = 0 AND t.header_timestamp = t1.max_header_timestamp THEN 'Y'
       END AS current_flg
FROM   Employee_Attunity_CT t
       INNER JOIN (
                SELECT MAX(header_timestamp) AS max_header_timestamp,
                       MAX(CASE WHEN header_change_oper = 'D' THEN 1 ELSE 0 END) AS Is_Deleted,
                       first_name,
                       last_name
                FROM   Employee_Attunity_CT t
                GROUP BY
                       first_name,
                       last_name
            ) t1
            ON  t.first_name = t1.first_name
            AND t.last_name = t1.last_name
            AND (t.header_timestamp = t1.max_header_timestamp)
            AND t.header_change_oper IN ('U', 'D')
            AND t.header_change_seq > 201703010650085; -- Value will be picked up from Configuration Table                


SELECT * FROM Employee_Attunity_CT_Temp order by   sys_inserted_dttm               
                
	   
	